import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_polyplastic/Helper/images.dart';
import 'package:master_polyplastic/Helper/strings.dart';
import 'package:master_polyplastic/ui/LoignScreen/login_new.dart';
import 'package:master_polyplastic/utils/screen_size_helper.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Align(
                  alignment: Alignment.center,
                  child: Center(child: WelcomeScreenWidget())),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 8 * SizeConfig.heightMultiplier),
              child: Image.asset(
                Images.welcomeScreenLogo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          GetStartedButtonWidget()
        ],
      ),
    );
  }
}

class GetStartedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 2 * SizeConfig.heightMultiplier),
      child: MaterialButton(
        color: Colors.indigo,
        padding: EdgeInsets.symmetric(
            vertical: 2.5 * SizeConfig.heightMultiplier,
            horizontal: 8 * SizeConfig.widthMultiplier),
        child: Text(Strings.welcomeScreenButtonText,
            style: GoogleFonts.alegreya(color: Colors.white, fontSize: 18)),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPageNew()));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
    );
  }
}
