import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioServices {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;

  bool get existeUsuario => _usuario != null;

  //creamos un stream controller para poder escuchar los cambios en el usuario y notificar a los widgets
  // que esten escuchando el stream
  //el broadcast es para que varios widgets puedan escuchar el stream
  final StreamController<Usuario> _usuarioStreamController =
      StreamController<Usuario>.broadcast();

  //creamos un getter para poder escuchar el stream desde cualquier parte de la aplicacion y notificar a los widgets
  // que esten escuchando el stream
  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario user) {
    _usuario = user;
    _usuarioStreamController.add(user);
  }

  void cambiarEdad(int edad) {
    _usuario!.edad = edad;
    _usuarioStreamController.add(_usuario!);
  }

  void agregarProfesion(String profesion) {
    _usuario!.profesiones.add(profesion);
    _usuarioStreamController.add(_usuario!);
  }

  dispose() {
    _usuarioStreamController?.close();
  }
}

final usuarioServices = _UsuarioServices();


// usuarioServices.Usuario
//No me deja entrar a la propiedad usuario de la clase _UsuarioServices, por que el objeto usuarioServices es privado, 
//para solucionar esto se debe cambiar la propiedad _usuario a publica, 
//para que se pueda acceder a la propiedad usuario de la clase _UsuarioServices, de la siguiente manera:
//usuarioServices.usuario