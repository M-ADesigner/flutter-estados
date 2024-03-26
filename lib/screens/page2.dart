import 'package:flutter/material.dart';

class PaginaPage2 extends StatelessWidget {
  const PaginaPage2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pagina 2')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: const Text('Establecer usuario',
                      style: TextStyle(fontSize: 18, color: Colors.white))),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: const Text('Cambiar edad',
                      style: TextStyle(fontSize: 18, color: Colors.white))),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: const Text('Añadir profesion',
                      style: TextStyle(fontSize: 18, color: Colors.white))),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ));
  }
}
