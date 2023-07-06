
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class Homepage extends StatelessWidget {

   // ignore: empty_constructor_bodies
   Homepage({super.key}) {
    
    
  }

  final int day = 30;

  final String name = "Kiran";

  var arrName = ['kiran','Pawan','Sonal', 'Shubham','Sarang', 'Jitubhai','Shivam','Shubhangi','Sharda','Sonu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Catalgitog App"),
      ),
      body: ListView.separated( itemBuilder: (context, index) {
        return  ListTile(
            leading: Text('${index+1}'),
            title: Text(arrName as String),
            subtitle:  const Text('Friend'),
            trailing:  const Icon(Icons.add),


        );
       }, 
         itemCount: arrName.length,
         separatorBuilder:
              (BuildContext context, int index) {
        return  const Divider(height: 20,thickness: 1,);
        }, ), 
      drawer: const Drawer(),
      
    );
   

  }
}
