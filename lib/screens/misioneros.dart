import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gpm_version_4/src/ui/card_swiper_widget.dart';

class MissionaryScreen extends StatefulWidget {
  @override
  _MissionaryScreenState createState() => _MissionaryScreenState();
}
class _MissionaryScreenState extends State<MissionaryScreen> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    
    return Material(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: media.height * 0.14,
                    width: isPortrait ? media.width * 0.85 : media.width *0.5,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black54,
                        offset: new Offset(8.0, 6.0)
                      )],
                      borderRadius: BorderRadius.circular(27 ),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: AutoSizeText('Mi Compromiso con los Misioneros',textAlign: TextAlign.center,  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                        ),
                      
                    
                  ),
                ),
                Flex(
                  direction: isPortrait ? Axis.vertical : Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        height: media.height * 0.7,
                        width: isPortrait ? media.width * 0.95 : media.width * 0.5,
                        child: CardSwiper()
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6, bottom: 8),
                      child: FloatingActionButton(
                        heroTag: 'missionary',
                        child: Icon(Icons.arrow_back, size: 32,),
                        onPressed: ()=> Navigator.pop(context),
                      ),
                    )  
                  ],
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

