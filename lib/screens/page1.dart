import 'package:flutter/material.dart';

class PaginaPage1 extends StatelessWidget {
  const PaginaPage1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina 1',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue,
        ),
        body: InformacionUsuario(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'pagina2');
          },
          child: const Icon(Icons.arrow_forward),
        ));
  }
}

class InformacionUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Nombre: ')),
          ListTile(title: Text('Edad: ')),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Profesion 1: ')),

        ],
      ),
    );
  }
}
