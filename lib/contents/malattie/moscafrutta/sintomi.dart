import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class MarciumeRadicaleFibrosoSintomi extends StatefulWidget {
  @override
  _MarciumeRadicaleFibrosoSintomiState createState() =>
      _MarciumeRadicaleFibrosoSintomiState();
}

class _MarciumeRadicaleFibrosoSintomiState
    extends State<MarciumeRadicaleFibrosoSintomi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              AppLocalizations.of(context)
                  .translate("sintomimarciumeradicalefibroso"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/marciumeradicalefibroso2.jpg"),
            SizedBox(height: 100),
          ]),
    );
  }
}
