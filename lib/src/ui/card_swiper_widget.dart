import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';
class CardSwiper extends StatefulWidget {
  @override
  CardSwiperState createState() => CardSwiperState();
}
int _switchColor = 9;

class CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    bool isOrar = true;
    bool isOfrendar = true;
    bool isMovilizar = true;
    final media = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      child: Center(
        child: new FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/misioneros.json'),
          builder: (context, snapshot){

            var myData = json.decode(snapshot.data.toString());
            return Swiper(
              curve: Curves.elasticOut,
              customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 2).addRotate([-45.0 / 180, 0.0, 45 / 180]).addTranslate([
                Offset(-370, -40),
                Offset(0.0, 0.0),
                Offset(370, -40)
              ]),
              itemHeight: isPortrait ? media.height * 0.5 : media.height * 0.7,
              itemWidth: isPortrait ? media.width * .7 : media.width * 0.4,
              layout: SwiperLayout.STACK,
              itemCount: myData == null ? 0 : myData.length,

              itemBuilder: (BuildContext context, index){
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black54,
                      offset: new Offset(2.0, 2.0)
                    )],
                    gradient: RadialGradient(
                      radius: 0.6,
                      colors: <Color>[
                        Colors.deepOrangeAccent,
                        Colors.orange,
                      ]
                    ),
                    border: Border.all(color: Color(0xFF858585)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(myData[index]['nombreProy'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                      ),
                      Text(myData[index]['lugar']),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: StreamBuilder<Object>(
                          stream: null,
                          builder: (context, snapshot) {
                            return Container(
                              child: Image.network(myData[index]['image'], height: media.height * 0.15 , width: media.height*0.15));
                          }
                        ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    final random = Random();
                                    isOrar = value;
                                    _switchColor = random.nextInt(9);
                                  });
                                },
                                inactiveThumbColor: Colors.red,
                                activeTrackColor: Colors.lightBlueAccent, 
                                activeColor: Colors.green[_switchColor*100],
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
                                inactiveThumbColor: Colors.red,
                                activeTrackColor: Colors.lightBlueAccent, 
                                activeColor: Colors.green[_switchColor*100],
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
                                inactiveThumbColor: Colors.red,
                                activeTrackColor: Colors.lightBlueAccent, 
                                activeColor: Colors.green[_switchColor*100],
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(myData[index]['proceso']),
                      )
                    ],
                  ),
                );
              },
            control: new SwiperControl(),
            );

          }
        ),
      ),
      
    );
  }
}