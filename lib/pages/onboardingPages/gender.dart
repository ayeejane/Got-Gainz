import 'package:fitness_app/services/shared-pref-helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Gender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent, //TODO: Pick a color
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          gender(context),
        ],
      ),
    );
  }

  Widget gender(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    'What is your gender?',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonTheme(
                    //male button
                    minWidth: 200.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                        SharedPreferencesHelper.setGender(0);
                        Navigator.of(context).pushNamed(
                          '/fourth',
                        );
                      },
                      child: Text('MALE'),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.deepOrange)
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonTheme(
                    //female button
                    minWidth: 200.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                        SharedPreferencesHelper.setGender(1);
                        Navigator.of(context).pushNamed(
                          '/fourth',
                        );
                      },
                      child: Text('FEMALE'),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.deepOrange)
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
