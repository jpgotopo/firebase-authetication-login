class PaisInfo{
  final String pais;
  final String poblacion;
  final String numeroEtnias;
  final String numeroEtniasNa;
  final String porcEtniasNa;
  final String porcPoblNna;
  final String escalaProgreso;
  final String rangoPersecucion;
  final String religionPrincipal;
  final String ventana;

  PaisInfo({
    this.pais,
    this.poblacion,
    this.numeroEtnias,
    this.numeroEtniasNa,
    this.porcEtniasNa,
    this.porcPoblNna,
    this.escalaProgreso,
    this.rangoPersecucion,
    this.religionPrincipal,
    this.ventana,
  });

  factory PaisInfo.fromJson(Map<String, dynamic> json) {
    return new PaisInfo(
      pais: json['País'],
      poblacion: json['Población'],
      numeroEtnias: json['Número total de Etnias'],
      numeroEtniasNa: json['# de Etnias Menos-Alcanzadas'],
      porcEtniasNa: json['% Etnias Menos-Alcanzadas'],
      porcPoblNna: json['% Población Menos-Alcanzada'],
      escalaProgreso: json['Escala de Progreso'],
      rangoPersecucion: json['Rango de Persecución'],
      religionPrincipal: json['Religión Principal'],
      ventana: json['Ventana 10/40']
    );
  }

}