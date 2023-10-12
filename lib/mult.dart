import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mult extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MultState();
  }
}

class MultState extends State<Mult> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  double result = 0.0;

  void multiplyNumbers() {
    double num1 = double.tryParse(num1Controller.text) ?? 0.0;
    double num2 = double.tryParse(num2Controller.text) ?? 0.0;
    double multiplicationResult = num1 * num2;
    setState(() {
      result = multiplicationResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 57,
                width: 370,
                child: TextField(
                  controller: num1Controller,
                  decoration: InputDecoration(
                    labelText: 'Enter No1:',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText1,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 57,
                width: 370,
                child: TextField(
                  controller: num2Controller,
                  decoration: InputDecoration(
                    labelText: 'Enter No2:',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyText1,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: multiplyNumbers,
                child: Text('Multiply'),
              ),
              SizedBox(height: 20),
              Text(
                'Result: $result',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Mult());
}
