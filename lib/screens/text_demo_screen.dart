import 'package:flutter/material.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(color: Colors.indigo, width: 3)
                ),
                alignment: Alignment.center,
                child: const Text("Корабли лавировали, лавировали, лавировали, да не вылавировали",
                    overflow: TextOverflow.clip,
                    softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(color: Colors.indigo, width: 3)
                ),
                alignment: Alignment.center,
                child: const Text.rich(
                  TextSpan(text: "Корабли лавировали,",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  children: <TextSpan>[
                  TextSpan(text: " лавировали, лавировали,", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " да не вылавировали", style: TextStyle(fontStyle: FontStyle.italic)),
                  ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
