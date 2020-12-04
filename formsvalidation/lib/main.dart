import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;
  String _last_name;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form Validation'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Name'),
          keyboardType: TextInputType.text,
          validator: validate_name,
          onSaved: (String name){
            _name = name;
          },
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Last name'),
          keyboardType: TextInputType.text,
          validator: validate_last_name,
          onSaved: (String name){
            _last_name = name;
          },
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Mobile'),
          keyboardType: TextInputType.phone,
          validator: validatePhoneNumber,
          onSaved: (String phoneNumber){
            _mobile = phoneNumber;
          },
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Email'),
          keyboardType: TextInputType.emailAddress,
          validator: validateEmail,
            onSaved: (String emial){
            _email = emial;

            },


        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          onPressed: _validateInputs,
          child: new Text('Submit'),
        )
      ],
    );
  }

  void _validateInputs() {

    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print("$_name and $_email and _$_mobile");

    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  String validate_name(String value) {
    if (value.length == 0) {
      return "Name is required";
    } else
      return null;
  }

  String validate_last_name(String value) {
    if (value.length == 0) {
      return "last_name is required";
    } else
      return null;
  }

  String validateEmail(String value) {
    if (value.length == 0) {
      return "Name is required";
    } else
      return null;
  }
  String validatePhoneNumber(String value) {
    if (value.length == 0) {
      return "Name is required";
    } else
      return null;
  }
}
