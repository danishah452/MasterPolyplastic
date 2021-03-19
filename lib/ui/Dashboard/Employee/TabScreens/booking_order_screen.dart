import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_polyplastic/Helper/strings.dart';
import 'package:master_polyplastic/ui/Dashboard/Employee/TabScreens/checkout_screen.dart';
import 'package:master_polyplastic/utils/screen_size_helper.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class BookingOrderScreen extends StatefulWidget {
  @override
  _BookingOrderScreenState createState() => _BookingOrderScreenState();
}

enum FavoriteMethod {
  flutter,
  kotlin,
}

class _BookingOrderScreenState extends State<BookingOrderScreen> {
  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Customer Name"),
        _entryField("Customer Address"),
        _entryField("Customer Contact"),
      ],
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                fillColor: Color(0xfff3f3f4),
                hintText: title,
                filled: true),
          )
        ],
      ),
    );
  }

  FavoriteMethod _method = FavoriteMethod.flutter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                      value: FavoriteMethod.flutter,
                      groupValue: _method,
                      onChanged: (value) {
                        setState(() {
                          _method = value;
                        });
                      }),
                  new Text(
                    'Existing',
                    style: TextStyle(fontSize: 20),
                  ),
                  new Radio(
                      value: FavoriteMethod.kotlin,
                      groupValue: _method,
                      onChanged: (value) {
                        setState(() {
                          _method = value;
                        });
                      }),
                  new Text(
                    'New',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              _emailPasswordWidget(),
              PartNo(),
              Items(),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 2 * SizeConfig.heightMultiplier),
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  width: 89 * SizeConfig.widthMultiplier,
                  height: 6 * SizeConfig.heightMultiplier,
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      Strings.checkout,
                      style: GoogleFonts.alegreya(
                          fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PartNo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(12, 6, 12, 3),
          child: MultiSelectFormField(
            chipBackGroundColor: Colors.indigo.shade100,
            checkBoxCheckColor: Colors.white,
            checkBoxActiveColor: Colors.green,
            chipLabelStyle: TextStyle(fontSize: 17),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            autovalidate: false,
            dialogShapeBorder: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            dataSource: [
              {
                "display": "Running",
                "value": "Running",
              },
              {
                "display": "Climbing",
                "value": "Climbing",
              },
              {
                "display": "Walking",
                "value": "Walking",
              },
              {
                "display": "Swimming",
                "value": "Swimming",
              },
              {
                "display": "Soccer Practice",
                "value": "Soccer Practice",
              },
              {
                "display": "Baseball Practice",
                "value": "Baseball Practice",
              },
              {
                "display": "Football Practice",
                "value": "Football Practice",
              },
            ],
            textField: 'display',
            valueField: 'value',
            okButtonLabel: 'OK',
            cancelButtonLabel: 'CANCEL',
            title: Text(
              'Item Type',
              style: GoogleFonts.alegreya(color: Colors.black, fontSize: 20),
            ),
            // required: true,
          ),
        ),
      ],
    );
  }
}

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(12, 6, 12, 3),
          child: MultiSelectFormField(
            chipBackGroundColor: Colors.indigo.shade100,
            checkBoxCheckColor: Colors.white,
            checkBoxActiveColor: Colors.green,
            chipLabelStyle: TextStyle(fontSize: 17),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            autovalidate: false,
            dialogShapeBorder: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            dataSource: [
              {
                "display": "Running",
                "value": "Running",
              },
              {
                "display": "Climbing",
                "value": "Climbing",
              },
              {
                "display": "Walking",
                "value": "Walking",
              },
              {
                "display": "Swimming",
                "value": "Swimming",
              },
              {
                "display": "Soccer Practice",
                "value": "Soccer Practice",
              },
              {
                "display": "Baseball Practice",
                "value": "Baseball Practice",
              },
              {
                "display": "Football Practice",
                "value": "Football Practice",
              },
            ],
            textField: 'display',
            valueField: 'value',
            okButtonLabel: 'OK',
            cancelButtonLabel: 'CANCEL',
            title: Text(
              'Items',
              style: GoogleFonts.alegreya(color: Colors.black, fontSize: 20),
            ),
            // required: true,
          ),
        ),
      ],
    );
  }
}
