import 'package:flutter/material.dart';

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => new _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Form'),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Processing Data'),
                      ));
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Processing Done'),
                      ));
                    }
                  },
                  child: Text('SUBMIT'),
                ),
              )
            ],
          ),
        ),
      ),
    );
    //   Form(
    //   key: _formKey,
    //   child: Column(
    //     children: <Widget>[
    //       TextFormField(
    //         validator: (val) {
    //           if (val.isEmpty) {
    //             return 'Please enter some text';
    //           }
    //         },
    //       ),
    //       SizedBox(
    //         height: 40,
    //       ),
    //       RaisedButton(
    //         onPressed: () {},
    //         child: Text('SUBMIT'),
    //       )
    //     ],
    //   ),
    // );
  }
}
