import 'package:flutter/material.dart';

void main() {
  runApp(TextFieldWidget());
}

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final tgController = TextEditingController();
  final sgptController = TextEditingController();
  final tcholController = TextEditingController();
  final creatinineController = TextEditingController();
  final diaFamilyManController = TextEditingController();


  int? age;
  double? height;
  double? weight;
  int? tg;
  int? sgpt;
  int? tchol;
  double? creatinine;
  int? diaFamilyMan;


  @override
  void dispose() {
    ageController.dispose();
    heightController.dispose();
    weightController.dispose();
    tgController.dispose();
    sgptController.dispose();
    tcholController.dispose();
    creatinineController.dispose();
    diaFamilyManController.dispose();
    super.dispose();
  }

  void _submitInputData() {
    final inputAge = int.tryParse(ageController.text);
    final inputHeight = double.tryParse(heightController.text);
    final inputWeight = double.tryParse(weightController.text);
    final inputTg = int.tryParse(tgController.text);
    final inputSgpt = int.tryParse(sgptController.text);
    final inputTchol = int.tryParse(tcholController.text);
    final inputCreatinine = double.tryParse(creatinineController.text);
    final inputDiaFamilyMan = int.tryParse(diaFamilyManController.text);

    setState(() {
      age = inputAge;
      height = inputHeight;
      weight = inputWeight;
      tg = inputTg;
      sgpt = inputSgpt;
      tchol = inputTchol;
      creatinine = inputCreatinine;
      diaFamilyMan = inputDiaFamilyMan;
    });

    if (age != null &&
        age! > 0 &&
        height != null &&
        height! > 0 &&
        weight != null &&
        weight! > 0) {
      print('Age: $age, Height: $height, Weight: $weight,Tg: $tg, Sgpt: $sgpt, Tchol: $tchol, Creatinine: $creatinine, DiaFamilyMan: $diaFamilyMan');
    } else {
      print('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diabetes Prediction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('SourFriend'),
        ),
        body: Column(
          children: [
            Image.network(
              'https://i.imgur.com/KW8oJpH.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  TextField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Age",
                    ),
                  ), // age input
                  SizedBox(height: 20),
                  TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Height",
                    ),
                  ), // height input
                  SizedBox(height: 20),
                  TextField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Weight",
                    ),
                  ), // weight input
                  SizedBox(height: 20),
                  TextField(
                    controller: tgController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Tg",
                    ),
                  ), // tg input
                  TextField(
                    controller: sgptController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Sgpt",
                    ),
                  ), // sgpt input  // sgpt input
                  TextField(
                    controller: tcholController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Tchol",
                    ),
                  ), // tchol input // tchol input
                  TextField(
                    controller: creatinineController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your Creatinine",
                    ),
                  ), // creatinine input // creatinine input
                  TextField(
                    controller: diaFamilyManController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your DiaFamilyMan",
                    ),
                  ), // diaFamilyMan input // diaFamilyMan input

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitInputData,
                    child: Text('Submit'),
                  ),
                  SizedBox(height: 20),
                  if (age != null &&
                      age! > 0 &&
                      height != null &&
                      height! > 0 &&
                      weight != null &&
                      weight! > 0
                  )
                    Column(
                      children: [
                        Text('Age: $age'),
                        Text('Height: $height'),
                        Text('Weight: $weight'),
                        Text('Tg: $tg'),
                        Text('Sgpt: $sgpt'),
                        Text('Tchol: $tchol'),
                        Text('Creatinine: $creatinine'),
                        Text('DiaFamilyMan: $diaFamilyMan'),
                      ],
                    ),
                  if (age == null ||
                      age! <= 0 ||
                      height == null ||
                      height! <= 0 ||
                      weight == null ||
                      weight! <= 0
                  )
                    Text('Some inputs are null or zero'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
