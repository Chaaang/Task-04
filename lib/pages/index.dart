import 'package:flutter/material.dart';
import 'package:phonebookapplication/constant/base_api.dart';
import 'package:phonebookapplication/pages/create.dart';
import 'package:http/http.dart'as http;

const Map<String, String> headers = {
  "Content-Type": "application/json",
  "Accept": "application/json"
};



class IndexPage extends StatefulWidget {
  const IndexPage({ Key? key }) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }
  fetchUser() async {
    //var url = BASE_API + ;
    print('Ganana ka or iiwan kita'); 
    var response = await http.get(Uri.http('10.0.2.2:5000', '/router/get'), 
    headers: {"Content-Type": "application/json","Access-Control-Allow-Origin": "*"});
    //
    print('PLEASE GANA NA PO IKAW');
    print(response.body);
   //var uri = Uri.http("10.0.2.2:5000", "/router/get");
   //http.Response response = await http.get(url,headers: headers );
  

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contacts"),/*
        actions: [TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => createUser()));
          }, child: Icon(Icons.add, color: Colors.black,))],*/
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    return ListView.builder(itemBuilder: (context, index){
      return Card(

      );
    });
  }
}