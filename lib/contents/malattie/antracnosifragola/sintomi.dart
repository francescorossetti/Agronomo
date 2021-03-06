import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class AntracnosiFragolaSintomi extends StatefulWidget {
  @override
  _AntracnosiFragolaSintomiState createState() =>
      _AntracnosiFragolaSintomiState();
}

class _AntracnosiFragolaSintomiState extends State<AntracnosiFragolaSintomi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              AppLocalizations.of(context)
                  .translate("antracnosifragolasintomi1"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/antracnosi3.jpg"),
            SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)
                  .translate("antracnosifragolasintomi2"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/antracnosi4.jpg"),
            SizedBox(height: 100),
          ]),
    );
  }
}
