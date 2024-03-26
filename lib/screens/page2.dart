import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_services.dart';
import 'package:flutter/material.dart';

class PaginaPage2 extends StatelessWidget {
  const PaginaPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final usuario = Usuario(
        nombre: 'Fernando', edad: 35, profesiones: ['Ingeniero', 'Profesor']);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: StreamBuilder<Usuario>(
              stream: usuarioServices.usuarioStream,
              builder: (context, snapshot) {
                return AppBar(
                  title: snapshot.hasData
                      ? Text(snapshot.data!.nombre)
                      : const Text('Pagina 2'),
                );
              }),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    usuarioServices.cargarUsuario(usuario);
                  },
                  child: const Text('Establecer usuario',
                      style: TextStyle(fontSize: 18, color: Colors.white))),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    usuarioServices.cambiarEdad(45);
                  },
                  child: const Text('Cambiar edad',
                      style: TextStyle(fontSize: 18, color: Colors.white))),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    usuarioServices.agregarProfesion('Abogado');
                  },
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
