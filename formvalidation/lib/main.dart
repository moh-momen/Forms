
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("My app")),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  MyCustomForm({Key key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  final myController = TextEditingController();
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }
  void dispose(){
    myController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: ListView(
//          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 5),
          TextField(
            controller: myController,
          ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: "Enter User name",
              ),
              onChanged: (text) {
                print(" text field is: $text");
              },
              validator: validateText,
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                labelText: "Enter password",
              ),
              validator: validateText,
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter your username',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 5),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, otherwise false.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 5),

          ],
        ),
      ),
    );
  }
  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }
  String validateText(String text) {
    if (text.isEmpty) {
      return "Text can't be blank!";
    } else
      return null;
  }
}
