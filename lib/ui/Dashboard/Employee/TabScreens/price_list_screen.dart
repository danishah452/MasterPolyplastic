import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_polyplastic/Helper/strings.dart';
import 'package:master_polyplastic/model/price_list_model.dart';
import 'package:master_polyplastic/utils/screen_size_helper.dart';

class PriceListScreen extends StatefulWidget {
  @override
  _PriceListScreenState createState() => _PriceListScreenState();
}

class _PriceListScreenState extends State<PriceListScreen> {
  Widget _listCards() {
    return Expanded(
      flex: 3,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: 67 * SizeConfig.heightMultiplier,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Container(
                        padding: EdgeInsets.all(4 * SizeConfig.widthMultiplier),
                        width: 90 * SizeConfig.widthMultiplier,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Category: " + dummyData[index].category,
                              style: GoogleFonts.alegreya(
                                  color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              "Item Desc: " + dummyData[index].itemDes,
                              style: GoogleFonts.alegreya(
                                  color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              "Part No: " + dummyData[index].partNo,
                              style: GoogleFonts.alegreya(
                                  color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              "Price: " + dummyData[index].rate,
                              style: GoogleFonts.alegreya(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            PriceListSearch(),
            _listCards()
            // ListCard()
          ],
        ),
      ),
    );
  }
}

class PriceListSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 2 * SizeConfig.heightMultiplier,
              horizontal: 3 * SizeConfig.widthMultiplier),
          child: TextFormField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.send_sharp, color: Colors.black, size: 20),
              prefixIcon:
                  Icon(Icons.search_sharp, color: Colors.black, size: 20),
              labelText: Strings.searchLabelText,
              labelStyle:
                  GoogleFonts.alegreya(color: Colors.black, fontSize: 15),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(color: Colors.indigo.shade500),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                borderSide: BorderSide(color: Colors.indigo.shade500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
