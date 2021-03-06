import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class AfidelanigeroPeroGeneralita extends StatefulWidget {
  @override
  _AfidelanigeroPeroGeneralitaState createState() => _AfidelanigeroPeroGeneralitaState();
}

class _AfidelanigeroPeroGeneralitaState extends State<AfidelanigeroPeroGeneralita> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              AppLocalizations.of(context)
                  .translate("generalitaafidelanigeropero1"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              AppLocalizations.of(context)
                  .translate("generalitaafidelanigeropero2"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              AppLocalizations.of(context)
                  .translate("generalitaafidelanigeropero3"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/afidelanigeropero1.jpg"),
            SizedBox(height: 100),
          ]),
    );
  }
}
