
import 'package:flutter/material.dart';
import 'Navigation1/0/navigation1.dart';
import 'constants.dart';

void main() {
  runApp(
    LearnNavigation(),
  );
}

class LearnNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => HomeScreen(),
      '/details': (context) => DetailScreen(),
    });
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(""),
            Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: RaisedButton(
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NavigationOne();
                  }));
                },
                child:
                    Text("  Navigation 1.0 ", style: TextStyle(fontSize: 25)),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 100,
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text("  Navigation 2.0 ", style: kTextStyle),
              ),
            ),
            Center(
                child: FlatButton(
              child: Text('View Details'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                );
              },
            ))
          ],
        ),
      ),
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
