import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class CoccinigliaficoFicoSintomi extends StatefulWidget {
  @override
  _CoccinigliaficoFicoSintomiState createState() =>
      _CoccinigliaficoFicoSintomiState();
}

class _CoccinigliaficoFicoSintomiState
    extends State<CoccinigliaficoFicoSintomi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              AppLocalizations.of(context).translate("curecoccinigliafico1"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/coccinigliafico3.jpg"),
            SizedBox(height: 20),
            Text(
              AppLocalizations.of(context).translate("curecoccinigliafico2"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/coccinigliafico4.jpg"),
            SizedBox(height: 100),
          ]),
    );
  }
}
