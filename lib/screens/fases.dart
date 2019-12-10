import 'package:flutter/material.dart';

class PhasesGpm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('GPM Tracking'),
        backgroundColor: Color(0xFFFE9000),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: AlignmentDirectional.center ,
                  children: <Widget>[
                    
                    Container(
                      height: 76.0,
                      width: 308.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), 
                        color: Color(0xFF0055FE),

                      ),
                    ),
                    Text('Fases', style:TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          ),
        
      )
    );
    
      
    
  }
}