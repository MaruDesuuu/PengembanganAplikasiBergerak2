import 'package:daftar_belanja2/screens/list_belanja_service.dart';
import 'package:daftar_belanja2/services/belanja_service.dart';
import 'package:flutter/material.dart';

class FormBelanja extends StatefulWidget {
  const FormBelanja({super.key});

  @override
  State<FormBelanja> createState() => _FormBelanjaState();
}

class _FormBelanjaState extends State<FormBelanja> {
  final TextEditingController _controller_1 = TextEditingController();
  final TextEditingController _controller_2 = TextEditingController();
  final BelanjaService _shoppingService = BelanjaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Belanja"),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const ListBelanja()));
          },
          icon: Icon(Icons.keyboard_backspace)),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller_1,
                    decoration: InputDecoration(hintText: 'Nama Barang'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller_2,
                    decoration: InputDecoration(hintText: 'Jumlah Barang'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _shoppingService.addShoppingItem(
                    _controller_1.text, _controller_2.text);
                _controller_1.clear();
                _controller_2.clear();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ListBelanja()));
              },
              child: const Text("Input Daftar Belanja"),
            ),
          ),
        ],
      ),
    );
  }
}
