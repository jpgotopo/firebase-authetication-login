import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
//import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
//import 'package:gpm_version_4/src/models/obreros_model.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:gpm_version_4/src/ui/card_swiper_widget.dart';


class MissionaryScreen extends StatefulWidget {
  @override
  _MissionaryScreenState createState() => _MissionaryScreenState();
}

class _MissionaryScreenState extends State<MissionaryScreen> {
  /* Future _loadAsWorkerAsset() async {
    return await rootBundle.loadString('assets/misioneros.json');
  }

  Future loadWorker() async {
    String jsonString = await _loadAsWorkerAsset();
    final jsonResponse = json.decode(jsonString);
    Worker worker = new Worker.fromJson(jsonResponse);
    print(worker.lugar);
  } */

  @override
  Widget build(BuildContext context) {
    
    final media = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: media.height * 0.3,
              width: media.width * 0.85,
              decoration: BoxDecoration(
                
                boxShadow: [BoxShadow(
                  color: Colors.black54,
                  offset: new Offset(3.0, 3.0)
                )],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(27), 
                  topRight: Radius.circular(27), 
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF65B04B),
                    Color(0xFF409422),
                    Color(0xFF409422),
                    Color(0xFF65B04B),
                  ],
              ),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  // TODO aqui van datos importados desde base de datos
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AutoSizeText('Mi Compromiso con los Misioneros',textAlign: TextAlign.center,  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            /* Container(
              height: media.height * 0.5,
              child: CardSwiper()
            ) */
            
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: media.height * 0.4,
                child: CardSwiper()
                /* Swiper(
                  itemWidth: media.width * .6,
                  itemHeight: media.height * 0.4,
                  //layout: SwiperLayout.STACK,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                    return Image.network("http://via.placeholder.com/350x250", fit: BoxFit.fill);
                  },
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                ), */
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: FloatingActionButton(
                child: Icon(Icons.arrow_back, size: 32,),
                onPressed: ()=> Navigator.pop(context),
              ),
            )  

          ],
        ),
      ),
      
    );
  }
}

class MissionaryItems extends StatelessWidget {
  MissionaryItems({this.title, this.field, this.image});

  final String field;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}