import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        /*leading: IconButton(
          icon: const Icon( Icons.refresh_rounded ),
          onPressed: () {

          },
          ),*/
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            'Clic${clickCounter == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
          )
        ],
      )),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),

          const SizedBox( height: 15 ),

          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      )
    );
  }
}
