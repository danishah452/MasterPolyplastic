import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<AdminDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showMessage(String message, [MaterialColor color = Colors.blue]) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      backgroundColor: color,
      content: new Text(
        message,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      duration: const Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.indigo.shade400,
          title: Center(
            child: Text('Admin Dashboard',
                style: GoogleFonts.alegreya(
                    color: Colors.white, fontSize: 22.0)),
          ),
          actions: <Widget>[
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 8.0,
                ),
                child: Icon(Icons.settings_power),
              ),
              onTap: () {
                print("Logout clicked");
              },
            )
          ],
        ),
        body: Container(
          // decoration: new BoxDecoration(color: Colors.indigo.shade600),
          child: StaggeredGridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            children: <Widget>[
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Material(
                            color: Colors.purple,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(Icons.apps,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 12.0)),
                        Text(
                          'All',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          'Applications',
                          style: TextStyle(color: Colors.black45, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {showMessage('Nothing to show')}),
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Material(
                            color: Colors.redAccent,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(Icons.people,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 12.0)),
                        Text(
                          'All',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          'Admins',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 11.0),
                        ),
                      ],
                    ),
                  ), onTap: () {
                showMessage("Nothing to show");
              }),
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Material(
                            color: Colors.teal,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(Icons.donut_small,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 12.0)),
                        Text(
                          'All',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          'Dummy',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 11.0),
                        ),
                      ],
                    ),
                  ), onTap: () {
                showMessage("Nothing to show");
              }),
              _buildTile(
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Material(
                            color: Colors.indigo,
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(Icons.get_app_sharp,
                                  color: Colors.white, size: 20.0),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 12.0)),
                        Text(
                          'All',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          'Dummy',
                          style:
                          TextStyle(color: Colors.black45, fontSize: 11.0),
                        ),
                      ],
                    ),
                  ), onTap: () {
                showMessage("Nothing to show");
              }),
            ],
            staggeredTiles: [
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(1, 120.0),
              StaggeredTile.extent(3, 120.0)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
      elevation: 20.0,
      borderRadius: BorderRadius.circular(25.0),
      shadowColor: Color(0x802196F3),
      child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
          onTap: onTap != null
              ? () => onTap()
              : () {
                  showMessage("Nothing to show");
                },
          child: child),
    );
  }
}
