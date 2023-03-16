//Create an application with radio buttons (Add, Subtraction, Multiply, Division) EditText (number1, number2)
//and print result as per user choice from radio button in TextView

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(home: CalculatorWidget()),
  );
}

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  // Variables to hold the selected operator and input values
  String _selectedOperator = "+";
  String _input1 = "";
  String _input2 = "";

  // Function to perform the calculation based on the selected operator
  double _calculateResult() {
    double input1 = double.parse(_input1);
    double input2 = double.parse(_input2);

    switch (_selectedOperator) {
      case "+":
        return input1 + input2;
      case "-":
        return input1 - input2;
      case "*":
        return input1 * input2;
      case "/":
        return input1 / input2;
      default:
        return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Input fields
          TextField(
            decoration: InputDecoration(labelText: "Input 1"),
            keyboardType: TextInputType.number,
            // inputFormatters: <TextInputFormatter>[
            //   FilteringTextInputFormatter.allow(RegExp(r'[0-9\.]')),
            // ],
            onChanged: (value) {
              setState(() {
                _input1 = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Input 2"),
            keyboardType: TextInputType.number,
            // inputFormatters: <TextInputFormatter>[
            //   FilteringTextInputFormatter.allow(RegExp(r'[0-9\.]')),
            // ],
            onChanged: (value) {
              setState(() {
                _input2 = value;
              });
            },
          ),

          // Radio buttons for operator selection
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: "+",
                groupValue: _selectedOperator,
                onChanged: (value) {
                  setState(() {
                    _selectedOperator = value!;
                  });
                },
              ),
              Text("+"),
              Radio(
                value: "-",
                groupValue: _selectedOperator,
                onChanged: (value) {
                  setState(() {
                    _selectedOperator = value!;
                  });
                },
              ),
              Text("-"),
              Radio(
                value: "*",
                groupValue: _selectedOperator,
                onChanged: (value) {
                  setState(() {
                    _selectedOperator = value!;
                  });
                },
              ),
              Text("*"),
              Radio(
                value: "/",
                groupValue: _selectedOperator,
                onChanged: (value) {
                  setState(() {
                    _selectedOperator = value!;
                  });
                },
              ),
              Text("/"),
            ],
          ),

          // Button to perform the calculation and display the result
          ElevatedButton(
            onPressed: () {
              double result = _calculateResult();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Result: $result")),
              );
            },
            child: Text("Calculate"),
          ),
        ],
      ),
    );
  }
}
