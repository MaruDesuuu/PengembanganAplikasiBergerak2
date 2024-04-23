import 'package:daftar_belanja2/screens/form_belanja_service.dart';
import 'package:daftar_belanja2/services/belanja_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListBelanja extends StatefulWidget {
  const ListBelanja({super.key});

  @override
  State<ListBelanja> createState() => _ListBelanjaState();
}

class _ListBelanjaState extends State<ListBelanja> {
  final BelanjaService _shoppingService = BelanjaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Belanja"),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<Map<String, String>>(
              stream: _shoppingService.getShoppingList(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Map<String, String> items = snapshot.data!;
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final key = items.keys.elementAt(index);
                      final item = items[key];
                      return ListTile(
                        title: Text(item!),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            _shoppingService.removeShoppingItem(key);
                          },
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const FormBelanja()));
              },
              child: const Text("Tambah Daftar Belanja"),
            ),
          ),
        ],
      ),
    );
  }
}
