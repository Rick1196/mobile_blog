import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  static FirebaseUser _currentUser;

  createUserWithEmailAndPassword(
      String email, String password, String name) async {
    final currentUser = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    assert(await currentUser.user.getIdToken() != null);
    await updateUserName(name, currentUser.user);
    return currentUser.user.uid;
  }

  Future updateUserName(String name, FirebaseUser currentUser) async {
    var userUpdateInfo = UserUpdateInfo();
    userUpdateInfo.displayName = name;
    await currentUser.updateProfile(userUpdateInfo);
    assert(await currentUser.getIdToken() != null);
    _currentUser = currentUser;
  }

  void signInWithEmailAndPassword(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((user) {
      _currentUser = user.user;
    });
  }

  Future<String> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

    _currentUser = currentUser;
    return _currentUser.displayName;
  }

  bool isSignIn() {
    return (_currentUser == null) ? false : true;
  }

  void signOut() {
    _auth.signOut();
  }

  FirebaseUser getUser() {
    return _currentUser;
  }
}
