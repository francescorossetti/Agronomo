import 'package:agronomo/constants.dart';
import 'package:agronomo/helpers/listMalattie.dart';
import 'package:agronomo/helpers/pianteCard.dart';
import 'package:agronomo/helpers/searchbox.dart';
import 'package:agronomo/models/pianta.dart';
import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  List<Pianta> myPiante = piante;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: body(context),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: false,
        title: Text(AppLocalizations.of(context).translate("dashboard")));
  }

  body(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {
            var elements = piante
                .where((element) => AppLocalizations.of(context)
                    .translate(element.nome)
                    .contains(value))
                .toList();

            setState(() {
              widget.myPiante = elements;
            });
          }),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: widget.myPiante.length,
                  itemBuilder: (context, index) => PianteCard(
                    itemIndex: index,
                    pianta: widget.myPiante[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ListMalattie(malattie: piante[index].malattie)),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}