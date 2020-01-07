import 'package:flutter/material.dart';
import 'package:gpm_version_4/pages/login.dart';
class ContactosGpm extends StatefulWidget {
  @override
  _ContactosGpmState createState() => _ContactosGpmState();
}

class _ContactosGpmState extends State<ContactosGpm> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      height: media.height * 0.96,
      width: media.width * 0.95,
      child: ListView.builder(
        itemCount: 30, //TODO cambiar aqui por el largo de la lista
        itemBuilder: (BuildContext context, index){
          return ListTile(
            leading: Container(
              height: media.height * 0.0375,
              width: media.height * 0.0375,
              child: Text('JG'), //TODO aqui van las iniciales del contacto
            ),
            title: Text('944516423'), //TODO aquí va  numero tomado de la base de datos si el nombre es nulo
            subtitle: Text('Lugar del llamado'),
          );
        },
      ),      
    );
  }
}