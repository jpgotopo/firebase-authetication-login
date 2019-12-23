class Worker{
  final String id;
  final String nombreProy;
  final String image;
  final String lugar;
  final String proceso;

  Worker({
    this.id,
    this.nombreProy,
    this.image,
    this.lugar,
    this.proceso

  });

  factory Worker.fromJson(Map<String, dynamic> json) {
    return new Worker(
      id: json['id'].toString(),
      nombreProy: json['nombreProy'],
      image: json['image'],
      lugar: json['lugar'],
      proceso: json['proceso'],
    );
  }

}

class WorkerList {
  final List<Worker> workers;

  WorkerList({
    this.workers
  });

  factory WorkerList.fromJson(List<dynamic> parsedJson) {

    List<Worker> workers = new List<Worker>();
    workers = parsedJson.map((i)=>Worker.fromJson(i)).toList();

    return new WorkerList(
      workers: workers
    );
  }

}