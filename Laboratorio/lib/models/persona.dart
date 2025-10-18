class Paciente {
  final int? id;
  final String nombre;
  final String apellidos;
  final String dni;
  final String fechaNacimiento;
  final String antecedentesFamiliares;

  Paciente({
    this.id,
    required this.nombre,
    required this.apellidos,
    required this.dni,
    required this.fechaNacimiento,
    required this.antecedentesFamiliares,
  });

  factory Paciente.fromJson(Map<String, dynamic> json) {
    return Paciente(
      id: json['id'],
      nombre: json['nombre'] ?? '',
      apellidos: json['apellidos'] ?? '',
      dni: json['dni'] ?? '',
      fechaNacimiento: json['fecha_nacimiento'] ?? '',
      antecedentesFamiliares: json['antecedentes_familiares'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'apellidos': apellidos,
      'dni': dni,
      'fecha_nacimiento': fechaNacimiento,
      'antecedentes_familiares': antecedentesFamiliares,
    };
  }
}
