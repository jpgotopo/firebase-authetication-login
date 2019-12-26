class Worker{
  int id;
  String nombreProy;
  String image;
  String lugar;
  String proceso;


  Worker({
    this.id,
    this.nombreProy,
    this.image,
    this.lugar,
    this.proceso

  });

   Worker.fromJson(Map<String, dynamic> json) {
    
      id = json['id'];
      nombreProy = json['nombreProy'];
      image = json['image'];
      lugar = json['lugar'];
      proceso = json['proceso'];
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['id'] = this.id;
      data['nombreProy'] = this.nombreProy;
      data['image'] = this.image;
      data['lugar'] = this.lugar;
      data['proceso'] = this.proceso;
      return data;
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