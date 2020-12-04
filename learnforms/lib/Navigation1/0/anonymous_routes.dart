import 'package:flutter/material.dart';
class AnonymousRoutes extends StatefulWidget {
  @override
  _AnonymousRoutesState createState() => _AnonymousRoutesState();
}
class _AnonymousRoutesState extends State<AnonymousRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("How it works"),
            Center(
              child: Image.asset("assets/nav1.png")
            ),
            Center(
              child: FlatButton(
                child: Text('View Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DetailScreen();
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('Pop!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
