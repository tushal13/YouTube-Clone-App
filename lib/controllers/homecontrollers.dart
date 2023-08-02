import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class HomeController extends ChangeNotifier {
  final yt = YoutubeExplode();
  List<Video> searchResults = [];
  bool isLoading = false;

  HomeController() {
    Search();
  }

  Search({String searchQuery = ''}) async {
    searchResults = await yt.search.search(searchQuery);
    notifyListeners();
    return 0;
  }
}
