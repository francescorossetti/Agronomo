import 'package:agronomo/constants.dart';
import 'package:agronomo/helpers/detailMalattie.dart';
import 'package:agronomo/helpers/malattieCard.dart';
import 'package:agronomo/models/malattia.dart';
import 'package:agronomo/utils/AppLocalizations.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

// ignore: must_be_immutable
class ListMalattie extends StatefulWidget {
  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  final List<Malattia> malattie;
  final String nomePianta;

  ListMalattie(
      {Key key,
      @required this.malattie,
      @required this.nomePianta,
      this.analytics,
      this.observer})
      : super(key: key);

  @override
  _ListMalattieState createState() => _ListMalattieState();
}

class _ListMalattieState extends State<ListMalattie> {
  BannerAd myBanner;
  bool bannerLoaded = false;
  bool keyboardLoaded = false;
  List<Malattia> myMalattie;

  @override
  void initState() {
    this.myMalattie = widget.malattie;

    super.initState();

    myBanner = BannerAd(
      adUnitId: kBannerAds,
      size: AdSize.leaderboard,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");

        if (event == MobileAdEvent.loaded)
          setState(() {
            bannerLoaded = true;
          });
      },
    );

    myBanner
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kSecondaryColor,
      body: body(context),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: kSecondaryColor,
        centerTitle: false,
        title: Text(AppLocalizations.of(context).translate("malattie")));
  }

  body(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
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
                  itemCount: myMalattie.length,
                  itemBuilder: (context, index) => MalattieCard(
                    itemIndex: index,
                    malattia: myMalattie[index],
                    nomePianta: widget.nomePianta,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaginaMalattia(
                                malattia: widget.malattie[index],
                                analytics: widget.analytics,
                                observer: widget.observer)),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          !this.keyboardLoaded ? SizedBox(height: 100) : Container(),
        ],
      ),
    );
  }
}
