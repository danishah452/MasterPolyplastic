import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_polyplastic/Helper/strings.dart';
import 'TabScreens/booking_order_screen.dart';
import 'TabScreens/cancel_order_screen.dart';
import 'TabScreens/catalogue_screen.dart';
import 'TabScreens/price_list_screen.dart';

class EmployeeDashboard extends StatefulWidget {
  @override
  _EmployeeDashboardState createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.indigo.shade400,
                      bottom: TabBar(
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 2.0, color: Colors.orange.shade700),
                          insets: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        unselectedLabelColor: Colors.grey.shade500,
                        labelColor: Colors.orange.shade700,
                        labelPadding: EdgeInsets.all(5),
                        indicatorColor: Colors.red,
                        indicatorWeight: 1,
                        tabs: [
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Price List',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                          // Tab(
                          //   child: FittedBox(
                          //     child: Text(
                          //       'Catalogue',
                          //       style: GoogleFonts.alegreya(
                          //           color: Colors.white, fontSize: 19),
                          //     ),
                          //   ),
                          // ),
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Booking',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                          Tab(
                            child: FittedBox(
                              child: Text(
                                'Cancel',
                                style: GoogleFonts.alegreya(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Center(
                        child: FittedBox(
                          child: Text(
                            Strings.welcomeScreenTitle,
                            style: GoogleFonts.alegreya(
                                color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        Container(
                          child: PriceListScreen(),
                        ),
                        // Container(
                        //   child: FilePickerDemo(),
                        // ),
                        // Container(
                        //   child: StockScreen(),
                        // ),
                        Container(
                          child: BookingOrderScreen(),
                        ),
                        Container(
                          child: CancelOrderScreen(),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
