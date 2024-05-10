import 'package:fasum_app/screens/add_post_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fasum_app/screens/sign_in_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SignInScreenState signInScreenState = SignInScreenState();

  Future<bool> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SignInScreen()));
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () async {
              bool result = await signOut(context);
              if (result) signInScreenState.userCredential.value = '';
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AddPostScreen()),
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
