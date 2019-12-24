import 'package:flutter/material.dart';
class Misioneros {
  final int id;
  final String nombreProy;
  final String image;
  final String lugar;
  final String proceso;

  Misioneros({this.id, this.nombreProy, this.image, this.lugar, this.proceso});

}

List<Misioneros> lWorkers = [
  Misioneros(id: 1, nombreProy: "Fam. Arkani", image: "arkani", lugar: "Asia del Sur", proceso: "En Campo"),
  Misioneros(id: 2, nombreProy: "Fam. Durán", image: "duran", lugar: "Quechua Panao", proceso: "En Campo" ),
  Misioneros(id: 3, nombreProy: "Fam. Flores Diego", image: "flores_diego", lugar: "Amahuacas", proceso: "En Campo" ),
  Misioneros(id: 4, nombreProy: "Fam. Garay Galvez", image: "garay_galvez", lugar: "Estados Unidos", proceso: "En Campo"),
  Misioneros(id: 5, nombreProy: "Fam. Salem", image: "salem", lugar: "Asia del Sur", proceso: "En Campo"),
  Misioneros(id: 6, nombreProy: "Fam. Soto Salazar", image: "soto_salazar", lugar: "Nomatsiguenga", proceso: "En Campo"),
  Misioneros(id: 7, nombreProy: "Mis. Belhu Mora", image: "belhu", lugar: "Mozambique", proceso: "En Campo"),
  Misioneros(id: 8, nombreProy: "Mis. Carmen Rodríguez", image: "carmen", lugar: "Estados Unidos", proceso: "En Campo"),
  Misioneros(id: 9, nombreProy: "Mis. Flor Méndez", image: "flor", lugar: "Europa y Medio Oriente", proceso: "En Campo"),
  Misioneros(id: 10, nombreProy: "Mis. Jim Perez", image: "jim", lugar: "Asháninkas", proceso: "En Campo"),
  Misioneros(id: 11, nombreProy: "Mis. Merary", image: "merary", lugar: "Asia Central", proceso: "En Campo"),
  Misioneros(id: 12, nombreProy: "Mis. Natalie", image: "natalie",lugar: "Asia Menor", proceso: "En Campo"),
  Misioneros(id: 13, nombreProy: "Mis. Rosmery Lopez",image: "rosmery",lugar: "Estados Unidos", proceso: "En Campo"),
  Misioneros(id: 14, nombreProy: "Fam. Ibrahim", image: "ibrahim", lugar: "Asia del Sur", proceso: "Gira Promocional"),
  Misioneros(id: 15, nombreProy: "Fam. Maldonado", image: "maldonado", lugar: "Sudeste de Asia", proceso: "Gira Promocional"),
  Misioneros(id: 16, nombreProy: "Fam. Rivera Sandoval", image: "rivera_sandoval", lugar: "España", proceso: "Gira Promocional"),
  Misioneros(id: 17, nombreProy: "Mis. Asha", image: "asha", lugar: "Asia del Sur", proceso: "Gira Promocional"),
  Misioneros(id: 18, nombreProy: "Mis. Ch'aska", image: "chaska", lugar: "África", proceso: "Gira Promocional"),
  Misioneros(id: 19, nombreProy: "Mis. Fen", image: "fen", lugar: "Asia del Este", proceso: "Gira Promocional"),
  Misioneros(id: 20, nombreProy: "Mis. Jael", image: "jael", lugar: "Asia del Sur", proceso: "Gira Promocional"),
  Misioneros(id: 21, nombreProy: "Mis. Miriam", image: "miriam", lugar: "África del Norte", proceso: "Gira Promocional"),
  Misioneros(id: 22, nombreProy: "Mis. Rosario Celis", image: "rosario", lugar: "Cuba", proceso: "Gira Promocional"),
  Misioneros(id: 23, nombreProy: "Mis. Sami", image: "sami", lugar: "África del Este", proceso: "Gira Promocional"),
  Misioneros(id: 24, nombreProy: "Mis. Sunny", image: "sunny", lugar: "Asia Oriental", proceso: "Gira Promocional"),
  Misioneros(id: 25, nombreProy: "Mis. Verónica Quispe", image: "veronica", lugar: "Cuba", proceso: "Gira Promocional"),
  Misioneros(id: 26, nombreProy: "Mis. Gaviotina", image: "gaviotina", lugar: "Asia del Sur", proceso: "Gira Promocional"),
  Misioneros(id: 27, nombreProy: "Mis. Erica Mallqui", image: "erica", lugar: "Uruguay", proceso: "Gira Promocional"),
  Misioneros(id: 28, nombreProy: "Fam. Tunqui", image: "tunqui", lugar: "Liberia", proceso: "Gira Promocional"),
  Misioneros(id: 29, nombreProy: "Fam. Juárez Kooyip", image: "juarez_kooyip", lugar: "Bulgariia", proceso: "En Campo"),
  Misioneros(id: 30, nombreProy: "Mis. Rohode Raquel vda. De Quinchoker", image: "quinchoquer", lugar: "Comunidades Nativas", proceso: "En Campo"),
  Misioneros(id: 31, nombreProy: "Fam. Mori Mego", image: "mori_mego", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 32, nombreProy: "Mis. Leysi Sandoval", image: "leysi", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 33, nombreProy: "Mis. Franklin Durán Martínez", image: "franklin", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 34, nombreProy: "Mis. Diego Acosta", image: "diego", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 35, nombreProy: "Mis. Luis Laurencio", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 36, nombreProy: "Mis. Mery Simón Huaranga", image: "huaranga", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 37, nombreProy: "Mis. Asunción vda. De Portugués", image: "asuncion", lugar: "Comunidades Nativas", proceso: "Gira Promocional"),
  Misioneros(id: 38, nombreProy: "Fam. Flores Salazar", image: "flores_salazar", lugar: "África del Este", proceso: "Gira Promocional"),
  Misioneros(id: 39, nombreProy: "Mis. Hugo Malpartida", image: "hugo", lugar: "Comunidades Nativas", proceso: "Gira Promocional")

];
 class WorkersList extends StatefulWidget {
  
   @override
   _WorkersListState createState() => _WorkersListState();
 }
 
 class _WorkersListState extends State<WorkersList> {
   @override
   Widget build(BuildContext context) {
    List<Widget> lista = new List<Widget>();
    for(var i =1; i <lWorkers.length; i++){
      lista.add(new WorkersListItems('id', 'nombreProyw', 'arkani', 'lugarw', 'procesow'));
    }
    return ListView(
      scrollDirection: Axis.horizontal,
      children: lista,
    );

  }
}

class WorkersListItems extends StatefulWidget {
  
  WorkersListItems(this.idw, this.nombreProyw, this.imagew, this.lugarw, this.procesow);
  final String idw;
  final String nombreProyw;
  final String imagew;
  final String lugarw;
  final String procesow;
  @override
  _WorkersListItemsState createState() => _WorkersListItemsState();
}

class _WorkersListItemsState extends State<WorkersListItems> {
  bool isOrar = true;
  bool isOfrendar = true;
  bool isMovilizar = true;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: media.height * 0.4,
        width: media.width * .6,
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(color: Color(0xFF858585)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.nombreProyw, style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/${ widget.imagew }.png', height: 60, width: 60,),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset('pray.png', height: 30, width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0),
                      child: Text('Orar'),
                    ),
                    Switch(
                      value: isOrar,
                      onChanged: (value){
                        setState((){
                          isOrar = value;
                        });
                      },
                    )
                  ],
                  
                ),
                Column(
                  children: <Widget>[
                    Image.asset('give.png', height: 30, width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0),
                      child: Text('Ofrendar'),
                    ),
                    Switch(
                      value: isOfrendar,
                      onChanged: (value){
                        setState((){
                          isOfrendar = value;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset('move.png', height: 30, width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0),
                      child: Text('Movilizar'),
                    ),
                    Switch(
                      value: isMovilizar,
                      onChanged: (value){
                        setState((){
                          isMovilizar = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}