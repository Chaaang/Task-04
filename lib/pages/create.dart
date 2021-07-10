import 'package:flutter/material.dart';

class createUser extends StatefulWidget {
  const createUser({ Key? key }) : super(key: key);

  @override
  _createUserState createState() => _createUserState();
}

class _createUserState extends State<createUser> {
  final TextEditingController _controllerfirstname = new TextEditingController();
  final TextEditingController _controllerlastname = new TextEditingController();
  final TextEditingController _controllerphonenumber = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Contacts'),
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        SizedBox(height: 30,),
        TextField(
          controller: _controllerfirstname,
          decoration: InputDecoration(
            hintText: "Firstname"
          ),
        ),
        SizedBox(height: 30,),
        TextField(
          controller: _controllerlastname,
          decoration: InputDecoration(
            hintText: "lastname"
          ),
        ),
        SizedBox(height: 50,),
        TextField(
          controller: _controllerphonenumber,
          decoration: InputDecoration(
            hintText: "phonenumber"
          ),
        ),
        TextButton(
          onPressed: (){

          }, child: Text('Done'))
      ]
    );
  }
}