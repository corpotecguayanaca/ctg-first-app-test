import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  final estiloTexto = const TextStyle(fontSize: 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titulo, myapp"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de taps", style: estiloTexto,),
            Text("0", style: estiloTexto,)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("hola mundo");
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}