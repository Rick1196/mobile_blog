import './post_fact.dart';
import 'package:meta/meta.dart';

class Post {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<PostFact> facts;

  Post({
    this.id,
    this.name,
    this.imagePath,
    this.userItinerarySummary,
    this.tourPackageName,
    this.facts,
  });

  static List<Post> fetchAll() {
    return [
      Post(
          id: 1,
          name: 'Flutter framework',
          imagePath: 'assets/flutter.jpeg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
            PostFact('Architectural Style', 'Japanese Buddhist architecture.'),
          ]),
      Post(
          id: 2,
          name: 'Angular framework',
          imagePath: 'assets/angular.png',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
          ]),
      Post(
          id: 3,
          name: 'Data science',
          imagePath: 'assets/data_science.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            PostFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
      Post(
          id: 1,
          name: 'Flutter framework',
          imagePath: 'assets/flutter.jpeg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
            PostFact('Architectural Style', 'Japanese Buddhist architecture.'),
          ]),
      Post(
          id: 2,
          name: 'Angular framework',
          imagePath: 'assets/angular.png',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
          ]),
      Post(
          id: 3,
          name: 'Data science',
          imagePath: 'assets/data_science.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            PostFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
      Post(
          id: 1,
          name: 'Flutter framework',
          imagePath: 'assets/flutter.jpeg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
            PostFact('Architectural Style', 'Japanese Buddhist architecture.'),
          ]),
      Post(
          id: 2,
          name: 'Angular framework',
          imagePath: 'assets/angular.png',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
            PostFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            PostFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
          ]),
      Post(
          id: 3,
          name: 'Data science',
          imagePath: 'assets/data_science.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            PostFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            PostFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }

  static Post fetchByID(int PostID) {
    // NOTE: this will replaced by a proper API call
    List<Post> Posts = Post.fetchAll();
    for (var i = 0; i < Posts.length; i++) {
      if (Posts[i].id == PostID) {
        return Posts[i];
      }
    }
    return null;
  }
}
