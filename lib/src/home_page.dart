import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/src/controllers/home_controller.dart';



class HomePage extends StatefulWidget {

    final HomeController controller ;
    const HomePage({ Key? key, required this.controller }) : super(key: key);
  
  _sucess(){
     return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ListTile(title: Text('item $index '),);
        }
      ,);
  }

  _error(){
    return ElevatedButton(onPressed: (){

    }, child: const Text('Tentar novamente'));
  }

   _loading(){
    return const Center( child: CircularProgressIndicator());
  }

  _start(){
    return Container();
  }



  }

  

@override
void initState() {
  super.initState();
  controller.start();
}


    @override
    _HomePageState createState() => _HomePageState();

  

  class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Todo\'s'),

      ), body: stateManagement(HomeState.start)  
    );
  }
}