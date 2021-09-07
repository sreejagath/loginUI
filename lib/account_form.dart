import 'package:flutter/material.dart';

class AccountForm extends StatefulWidget {

  @override
  _AccountFormState createState() => new _AccountFormState();
}

class _AccountFormState extends State<AccountForm> {
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Add an icon
          Icon(Icons.account_circle, size: 120.0, color: Colors.blue),
          TextFormField(
            validator: (String? value) {
              if (value?.isEmpty??true) {

                return 'Please enter a valid email';
              }
              if(value!.length < 6) {
                return 'Atleast 6 characters required';
              }
              if(value.length > 30){
                return 'Maximum 30 characters allowed';
              }
              if(!value.contains('@')){
                return 'Please enter a valid email';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
              icon: Icon(Icons.email),
              helperText: 'Please enter your email',
            ),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            validator: (value) {
              if (value?.isEmpty??true) {
                return 'Please enter a valid password';
              }
              if(value!.length < 6) {
                return 'Atleast 6 characters required';
              }
              if(value.length > 30){
                return 'Maximum 30 characters allowed';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Password',
              icon: Icon(Icons.lock),
              helperText: 'Please enter your password',
            ),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Text('Submit'),
            onPressed: (){
            _formKey.currentState!.validate();
            // ?Scaffold.of(context).showSnackBar(SnackBar(content: Text('Valid emai'))):Scaffold.of(context).showSnackBar(SnackBar(content: Text('Invalid email')));
          })
        ],
      ),
    );
  }
}