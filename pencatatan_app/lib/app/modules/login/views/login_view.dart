import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pencatatan_app/app/modules/home/views/home_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _errorMessage = '';

  ValueNotifier userCredential = ValueNotifier('');

  // Future<dynamic> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn(
  //       scopes: [
  //         'email',
  //       ],
  //       clientId:
  //       //'37974253661-bf7jutp8u17m02uf1jbi9r6p5gfnfus8.apps.googleusercontent.com', //ANDROID CLIENT ID
  //         '37974253661-6f2242raggt8urteh7kp6uvr1n1mk7bt.apps.googleusercontent.com', // WEB CLIENT ID
  //     ).signIn();

  //     final GoogleSignInAuthentication? googleAuth =
  //         await googleUser?.authentication;

  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );

  //     return await FirebaseAuth.instance.signInWithCredential(credential);
  //   } on Exception catch (e) {
  //     // TODO
  //     print('exception->$e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA79277),
      body: Container(
        margin: EdgeInsets.fromLTRB(Get.height * 0.3, Get.height * 0.1,
            Get.height * 0.3, Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    ),
                    color: Colors.brown),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WELCOME',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      Text(
                        'Aplikasi Pencatatan Barang & Hasil Produksi',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 32.0),
                          TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Colors.brown,
                              foregroundColor: Colors.white,
                            ),
                            icon: const Icon(Icons.login),
                            onPressed: () async {
                              // try {
                              //   await FirebaseAuth.instance
                              //       .signInWithEmailAndPassword(
                              //     email: _emailController.text,
                              //     password: _passwordController.text,
                              //   );
                              //   Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: (context) => const HomeView()),
                              //   );
                              // } catch (error) {
                              //   // setState(() {
                              //   //   _errorMessage = error.toString();
                              //   // });
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //       content: Text(_errorMessage),
                              //     ),
                              //   );
                              // }
                            },
                            label: const Text('Sign In'),
                          ),
                        ]),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
