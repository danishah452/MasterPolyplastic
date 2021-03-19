import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:master_polyplastic/Helper/strings.dart';
import 'package:master_polyplastic/model/cancel_order_model.dart';
import 'package:master_polyplastic/utils/screen_size_helper.dart';

class CancelOrderScreen extends StatefulWidget {
  @override
  _CancelOrderScreenState createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
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
                  itemCount: cancelOrderDummyData.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      child: Container(
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.indigo.shade300,
                            child: Text(cancelOrderDummyData[index]
                                .customerName
                                .substring(0, 1)
                                .toUpperCase()),
                            foregroundColor: Colors.white,
                          ),
                          title: Text(
                            Strings.customerName +
                                ": " +
                                cancelOrderDummyData[index].customerName,
                            style: GoogleFonts.alegreya(
                                color: Colors.black, fontSize: 18),
                          ),
                          subtitle: Text(
                            Strings.orderNo +
                                ": " +
                                cancelOrderDummyData[index].orderNumber,
                            style: GoogleFonts.alegreya(
                                color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () {
                            return null;
                          },
                        ),
                      ],
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
            CancelOrderSearch(),
            _listCards()
            // ListCard()
          ],
        ),
      ),
    );
  }
}

class CancelOrderSearch extends StatelessWidget {
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
