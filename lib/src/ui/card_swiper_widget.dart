import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:gpm_version_4/src/models/obreros_model.dart';

class CardSwiper extends StatefulWidget {

  final Future<Worker> worker;
  CardSwiper({Key key, this.worker}) : super(key: key);

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  
  @override
  Widget build(BuildContext context) {
    bool isOrar = true;
    bool isOfrendar = true;
    bool isMovilizar = true;
    final media = MediaQuery.of(context).size;
    return Container(
      child: Swiper(
        itemHeight: media.height * 0.4,
        itemWidth: media.width * .6,
        layout: SwiperLayout.TINDER,
        itemCount: 39,
      
        itemBuilder: (BuildContext context, int index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(color: Color(0xFF858585)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Familia Arkani', style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/arkani.png', height: 60, width: 60,),
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
          );
        },
        
        control: new SwiperControl(),
      ),
    );
  }
}