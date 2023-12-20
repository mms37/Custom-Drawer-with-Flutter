import 'package:drawer/pages/first_page.dart';
import 'package:drawer/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
       appBar: AppBar(
         backgroundColor: Color.fromRGBO(29, 29, 60, 1),
       ),
      body:

          
      const Center(child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Custom Drawer 1 with TurkishDeveloper',),
      )),
      drawer: Drawer(
        child: Container(
          color: Color.fromRGBO(26, 48, 71, 1),
          child: ListView(
            children: [
              const DrawerHeader(

                  child: Center(child: Text('Custom Drawer',
                    style: TextStyle(fontSize: 35,color: Colors.lightBlue,),)),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title:const Text(
                    'Empty Page 1',style: TextStyle(fontSize: 15,color: Colors.white),),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FirstPage()));},
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title:const Text(
                  'Empty Page 2',style: TextStyle(fontSize: 15,color: Colors.white),),onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SecondPage()));},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
