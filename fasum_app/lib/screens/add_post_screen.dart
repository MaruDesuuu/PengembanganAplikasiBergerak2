import 'package:camera/camera.dart';
import 'package:fasum_app/screens/home_screen.dart';
import 'package:fasum_app/services/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController _description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Post"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(Icons.cancel))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () async{
                    runApp(const CameraApp());
                  },
                  child: Image.asset(
                    'assets/images/camera.png',
                    height: 50,
                    width: 50,

                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 376,
                  height: 300,
                  child: TextField(
                    controller: _description,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Masukkan Deskripsi Posting"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: const Text("Post"),
            ),
          )
        ],
      ),
    );
  }
}
