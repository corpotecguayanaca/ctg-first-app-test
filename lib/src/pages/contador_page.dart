import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = const TextStyle(fontSize: 35);
  int _counter = 0;

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
            Text(
              "Numero de taps",
              style: _estiloTexto,
            ),
            Text(
              "$_counter",
              style: _estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: _createbuttons(),
    );
  }

  Widget _createbuttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(width: 30),
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(
            child: SizedBox(width: 1),
        ),
        FloatingActionButton(
          onPressed: _remove,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          onPressed: _add,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _add () {
    setState(() => _counter++);
  }
  void _remove () {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }
  void _reset () {
    setState(() => _counter=0);
  }
}
