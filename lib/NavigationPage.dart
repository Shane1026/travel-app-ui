import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  List<BOptions> deals = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[Text("Profile Details will show here")],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.deepPurpleAccent[200],
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.deepPurpleAccent,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BOptions(
                  iconN: Icons.flight,
                  utilN: 'Flights',
                ),
                BOptions(
                  iconN: Icons.hotel,
                  utilN: 'Hotels',
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BOptions(
                  iconN: Icons.tram,
                  utilN: 'Trains',
                ),
                BOptions(
                  iconN: Icons.train,
                  utilN: 'Bus',
                ),
              ],
            ),
            Center(
              child: Text(
                "Latest Deals",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent[200],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "50% off",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "70% off",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          "50% off on gpay",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          "50% off on Sikkim trips",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          "40% off on flights",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BOptions extends StatelessWidget {
  final IconData iconN;
  final String utilN;
  BOptions({@required this.iconN, @required this.utilN});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          color: Colors.white,
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Icon(
                        iconN,
                        size: 50,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        utilN,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
