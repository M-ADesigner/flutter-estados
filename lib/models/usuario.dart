class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario(
      {required this.nombre, required this.edad, required this.profesiones});

  void setNombre(String nombre) {
    this.nombre = nombre;
  }

  void setEdad(int edad) {
    this.edad = edad;
  }

  void addProfesion(String profesion) {
    this.profesiones.add(profesion);
  }
}
