import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class MaculaturabrunaPeroGeneralita extends StatefulWidget {
  @override
  _MaculaturabrunaPeroGeneralitaState createState() => _MaculaturabrunaPeroGeneralitaState();
}

class _MaculaturabrunaPeroGeneralitaState extends State<MaculaturabrunaPeroGeneralita> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              AppLocalizations.of(context)
                  .translate("generalitamaculaturabrunapero"),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/maculaturabruna1.jpg"),
            SizedBox(height: 100),
          ]),
    );
  }
}
