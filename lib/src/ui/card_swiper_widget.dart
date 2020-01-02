import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';
class CardSwiper extends StatefulWidget {
  @override
  CardSwiperState createState() => CardSwiperState();
}

class CardSwiperState extends State<CardSwiper> {
  @override
  Widget build(BuildContext context) {
    bool isOrar = true;
    bool isOfrendar = true;
    bool isMovilizar = true;
    final media = MediaQuery.of(context).size;
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
              itemHeight: media.height * 0.4,
              itemWidth: media.width * .5,
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
                        padding: const EdgeInsets.all(2.0),
                        child: Text(myData[index]['nombreProy'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                      ),
                      Text(myData[index]['lugar']),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          child: Image.asset('assets/rosario_celis.png', height: 70, width: 70)),
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
                                    isOrar = value;
                                  });
                                },
                                inactiveThumbColor: Colors.red,
                                activeTrackColor: Colors.lightBlueAccent, 
                                activeColor: Colors.green[500],
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
                                activeColor: Colors.green[500],
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
                                activeColor: Colors.green[500],
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