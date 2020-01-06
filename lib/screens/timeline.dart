import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Locals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), //Spanish
        const Locale('he'), // Hebrew
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      // ..
    );
  }
}

class LineaTiempo extends StatefulWidget {
  @override
  _LineaTiempoState createState() => _LineaTiempoState();
}

class _LineaTiempoState extends State<LineaTiempo> {
  @override
  @override
  void initState() { 
    super.initState();
    
  }
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          title: Text('Mi Línea de Tiempo'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height:
                      isPortrait ? media.height * 0.65 : media.height * 0.375,
                  child: Timeline.builder(
                    itemBuilder: (BuildContext context, int i) {
                      return TimelineModel(
                          Container(
                            height: media.height * 0.15,
                            child: Column(
                              children: <Widget>[
                                lineaTiempoItem[i],
                              ],
                            ),
                          ),
                          iconBackground: Colors.lightGreen,
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Colors.blue,
                          ));
                    },
                    position: isPortrait
                        ? TimelinePosition.Left
                        : TimelinePosition.Center,
                    itemCount: lineaTiempoItem.length,
                    physics: BouncingScrollPhysics(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: RaisedButton(
                    highlightColor: Colors.orange,
                    elevation: 10,
                    color: Colors.lightGreen,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => AddItem()));
                    },
                    child: Text('Modificar'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

List<LineaTiempoItems> lineaTiempoItem = [
  LineaTiempoItems(
      titulo: 'Inicio de Mi llamado',
      fecha: 2005,
      iconoT: IconButton(
        icon: Icon(
          Icons.hourglass_full,
          color: Colors.blueAccent,
        ),
        onPressed: () {},
      )),
  LineaTiempoItems(
      titulo: 'Estudios Teológicos',
      fecha: 2007,
      iconoT: IconButton(
        icon: Icon(
          Icons.book,
          color: Colors.green,
        ),
        onPressed: () {},
      )),
  LineaTiempoItems(
      titulo: 'Estudios Universitarios',
      fecha: 2007,
      iconoT: IconButton(
        icon: Icon(
          Icons.battery_full,
          color: Colors.amber,
        ),
        onPressed: () {},
      )),
  LineaTiempoItems(
      titulo: 'Estudios Teológicos',
      fecha: 2012,
      iconoT: IconButton(
        icon: Icon(
          Icons.cached,
          color: Colors.orange,
        ),
        onPressed: () {},
      )),
  LineaTiempoItems(
      titulo: 'Salida Fase 1',
      fecha: 2016,
      iconoT: IconButton(
        icon: Icon(
          Icons.outlined_flag,
          color: Colors.red,
        ),
        onPressed: () {},
      )),
  LineaTiempoItems(
      titulo: 'Salida Fase 2',
      fecha: 2020,
      iconoT: IconButton(
        icon: Icon(
          Icons.landscape,
          color: Colors.purple,
        ),
        onPressed: () {},
      )),
];

class LineaTiempoItems extends StatelessWidget {
  LineaTiempoItems({
    this.iconoT,
    this.titulo,
    this.fecha,
  });
  final IconButton iconoT;
  final String titulo;
  final int fecha;
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54, offset: new Offset(3.0, 2.0))
                      ]),
                ),
                iconoT,
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0XFFeeeeee),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(color: Colors.green, offset: new Offset(3.0, 2.0))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Paso: $titulo',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Text(
                      'Fecha: $fecha',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );

    //TODO agregar Opción para que el usuario añada item a línea de tiempo//
  }
}

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final _hitoController = TextEditingController();
  final _fechaController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  int _fecha;
  String _opcionSeleccionada;
  bool removeItem = false;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Hito'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: media.height * 0.20,
                    child: TextFormField(
                      decoration: new InputDecoration(
                        labelText: 'Hito',
                        helperText: isPortrait
                            ? 'Un hito es el momento que deseas fijar en \n tu línea de tiempo'
                            : 'Un hito es el momento que deseas fijar en tu línea de tiempo',
                        suffixIcon: Icon(Icons.timeline),
                        icon: Icon(Icons.history),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      controller: _hitoController,
                      validator: (val) => val.isNotEmpty
                          ? null
                          : 'Este campo no debería estar vacío',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: media.height * 0.20,
                      child: TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Fecha',
                          suffixIcon: Icon(Icons.change_history),
                          icon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        controller: _fechaController,
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          _selectDate(context);
                        },
                      ),
                    ),
                  ),
                  removeItem? Padding(
                    padding: EdgeInsets.all(8),
                    child: _crearDropdown(),
                  ) : Divider()
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: media.height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FloatingActionButton(
                        tooltip: 'Hito Agregado',
                        heroTag: 'agregar',
                        onPressed: () {
                          lineaTiempoItem.add(LineaTiempoItems(
                            titulo: _hitoController.text,
                            fecha: _fecha,
                            iconoT: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                            ),
                          ));
                          orderList();
                        },
                        child: Icon(Icons.add),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Agregar'),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      FloatingActionButton(
                        
                        heroTag: 'remover',
                        onPressed: () {
                          setState(() {
                            removeItem = !removeItem;
                          });
                          
                          orderList();
                        },
                        child: Icon(Icons.remove),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Remover'),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: 'volver',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Volver'),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _crearDropdown() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Color(0xFF858585)),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.select_all),
          SizedBox(width: 15.0),
          Expanded(
            child: DropdownButton(
              elevation: 8,
              value: _opcionSeleccionada,
              items: getOpcionesDropdown(),
              onChanged: (opt) {
                //print(opt);
                setState(() {
                  _opcionSeleccionada = opt;
                  lineaTiempoItem.removeWhere((item) => item.titulo == _opcionSeleccionada);
                  removeItem = false;
                  
                });
              },
            ),
          )
        ],
      ),
    ),
  );

}

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<String> titulos = [];
    for(var i = 0; i < lineaTiempoItem.length; i++){
      titulos.add(lineaTiempoItem[i].titulo);
    }
    List<DropdownMenuItem<String>> lista = new List();
    
    titulos.forEach((tituloH){
      lista.add(DropdownMenuItem(
        child: Text(tituloH),
        value: tituloH,
      ));
    });

    return lista;

  }
  Function orderList() {
    lineaTiempoItem.sort((a, b) {
      if ((a.fecha) > b.fecha) {
        return 1;
      }
      if (a.fecha < b.fecha) {
        return -1;
      }
      return 0;
    });
  }

  _selectDate(BuildContext context) async {
    Locale myLocale = Localizations.localeOf(context);
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1940),
        lastDate: new DateTime(2025),
        locale: myLocale);

    if (picked != null) {
      setState(() {
        _fecha = picked
            .year; //TODO incorporar dia, mes año ej: _dia = picked.day.toString
        _fechaController.text = picked.toString();
      });
    }
  }
}
