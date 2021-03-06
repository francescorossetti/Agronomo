import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class CoccinigliaagrumiAgrumiCure extends StatefulWidget {
  @override
  _CoccinigliaagrumiAgrumiCureState createState() =>
      _CoccinigliaagrumiAgrumiCureState();
}

class _CoccinigliaagrumiAgrumiCureState
    extends State<CoccinigliaagrumiAgrumiCure> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              AppLocalizations.of(context).translate("curecoccinigliaagrumi1"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              AppLocalizations.of(context).translate("curecoccinigliaagrumi2"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              AppLocalizations.of(context).translate("curecoccinigliaagrumi3"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/coccinigliaagrumi4.jpg"),
            SizedBox(height: 100),
          ]),
    );
  }
}
