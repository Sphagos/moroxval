import 'package:flutter/material.dart';
import 'package:moroxval/style/app_style.dart';

class EvaluationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Evaluation Form'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppStyle.profile ,height: 40,width: 40,),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: Text('Choose Instruction'),
              value: null, // Set the selected value
              onChanged: (String? value) {
                // Handle the dropdown value change
              },
              items: <String>['Instruction1']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
