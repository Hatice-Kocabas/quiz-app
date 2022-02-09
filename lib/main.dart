
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {

  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List <Widget> secimler=[];
  void buttonF(){

  }
  List <String> sorular=[
    'Titanic is the biggest ship ever,',
    'There are more chickens in the world than people',
    'Butterflies live one day',
    'the world is flat,',
    'Cashews are actually the stem of a fruit.',
    'Fatih Sultan Mehmet never ate potatoes',
    'To say 80, the French say 4 - 20,',
  ];
  List <bool> yanitlar=[false,true,false,false,true,true];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
               sorular[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 15,
          spacing: 15,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            bool dogruYanit=yanitlar[index];
                            setState(() {
                              if(dogruYanit==false){
                                secimler.add(kTrueIcon);

                              }
                              else
                                secimler.add(kFalseIcon);
                              index++;
                              //secimler.add(kYanlisIconu);
                            });
                          },
                        ))),

                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                             bool dogruYanit=yanitlar[index];
                          setState(() {
                            if (dogruYanit == false) {
                              secimler.add(kTrueIcon);
                            }
                            else
                              secimler.add(kFalseIcon);
                            index++;
                          } );
                          },

                        ))),
              ])),
        )
      ],
    );
  }
}


