import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_polyplastic/Helper/strings.dart';
import 'package:master_polyplastic/utils/screen_size_helper.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade500,
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: LoginTitle()),
            Expanded(flex: 4, child: LoginFormFields()),
          ],
        ),
      ),
    );
  }
}

class LoginFormFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: GoogleFonts.alegreya(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1 * SizeConfig.heightMultiplier),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.alegreya(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                child: Text(
                  Strings.loginForgetPassword,
                  style:
                      GoogleFonts.alegreya(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            LoginButtonWidget()
          ],
        ),
      ),
    );
  }
}

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              Strings.welcomeScreenTitle,
              style: GoogleFonts.alegreya(color: Colors.white, fontSize: 25),
            ),
          ),
          FittedBox(
            child: Text(
              Strings.loginScreenTitle,
              style: GoogleFonts.alegreya(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3 * SizeConfig.heightMultiplier),
      child: MaterialButton(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            vertical: 2.5 * SizeConfig.heightMultiplier,
            horizontal: 18 * SizeConfig.widthMultiplier),
        child: Text(Strings.loginScreenButtonText,
            style: GoogleFonts.alegreya(color: Colors.black, fontSize: 18)),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
    );
  }
}
