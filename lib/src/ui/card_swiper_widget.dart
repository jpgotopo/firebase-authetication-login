import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:gpm_version_4/src/models/obreros_model.dart';
//import 'dart:async' show Future;
//import 'package:flutter/services.dart' show rootBundle;
//import 'dart:convert';

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
        
        itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          return FutureBuilder(
            future: widget.worker,
            builder: (context, snapshot){
              if(snapshot.hasData){
                //card
                return Text(snapshot.data.nombreProy[0]);
              }else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },

          );
        },
        /* itemBuilder: (BuildContext context, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: <Widget>[
                Text(''),
                Image.asset('assets/arkani.png', height: 35, width: 35,),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset('orar.png', height: 25, width: 25,),
                        Text('Orar'),
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
                        Image.asset('ofrendar.png', height: 25, width: 25,),
                        Text('Ofrendar'),
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
                        Image.asset('movilizar.png', height: 25, width: 25,),
                        Text('Movilizar'),
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
        }, */
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}