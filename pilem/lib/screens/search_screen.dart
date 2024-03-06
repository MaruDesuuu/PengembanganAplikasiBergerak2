import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pilem/models/movie.dart';
import 'package:pilem/screens/detail_screen.dart';
import 'package:pilem/services/api_service.dart';

List<Movie> _searchResults = [];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();
  List<Movie> _searchResults = [];

  void initState() {
    super.initState();
    _searchController.addListener(_searchMovies);
  }

  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchMovies() async {
    if (_searchController.text.isEmpty) {
      setState(() {
        _searchController.clear();
      });
    }
    final List<Map<String, dynamic>> searchData =
        await _apiService.SearchMovies(_searchController.text);

    setState(() {
      _searchResults = searchData.map((e) => Movie.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                        hintText: "Search Movies", border: InputBorder.none),
                  ),
                ),
                Visibility(
                  visible: _searchController.text.isNotEmpty,
                  child: IconButton(
                    onPressed: () {
                      _searchController.clear();
                      setState(() {
                        _searchController.clear();
                      });
                    },
                    icon: Icon(Icons.clear),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                final Movie movie = _searchResults[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    leading: Image.network(
                      'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                      height: 50,
                      width: 50,
                    ),
                    title: Text(movie.title),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(movie: movie),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
