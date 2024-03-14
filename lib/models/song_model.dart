class Song {
  final String title;
  final String description;
  final String url;
  final String coverurl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverurl,
  });

  static List<Song> song = [
    Song(
        title: "Glass",
        description: "Glass",
        url: "assets/audio/song1.mp3",
        coverurl: "assets/images/spotifylogoA.png")
  ];
}
