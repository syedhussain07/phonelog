import 'package:flutter/material.dart';
import 'package:login_phone/collegeLocation.dart';
import 'package:login_phone/homeLocation.dart';
import 'package:login_phone/search%20address/searchAddress.dart';
import 'package:login_phone/officeLocation.dart';


const List<Widget> typeOfMeal = <Widget>[
  Text('Vegetarian'),
  Text('Non vegetarian'),
  Text('Prefer both')
];

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  //String selectedButtonValue = ''; // widget elevated button
  final List<bool> _selectedMeal = <bool>[
    false,
    false,
    true
  ]; // for toggle button
  bool isChecked = false; //
  bool isAcceptTerms = false; // for che
  bool? isStudent;// ck box

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                  fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Register you details and grab your first meal for free"),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                onChanged: (value) {
                  // phone=value;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: " What should we call you?",
                ),
                keyboardType:
                    TextInputType.text, // set the keyboard type to number
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
              onChanged: (value) {
                // phone=value;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: " Email",
              ),
              keyboardType:
                  TextInputType.text, // set the keyboard type to number
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
              onChanged: (value) {
                // phone=value;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: " Password",
              ),
              keyboardType:
                  TextInputType.text, // set the keyboard type to number
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Row(
            //   children: [
            //     buildButton('Button 1', Colors.blue),
            //     SizedBox(height: 20),
            //     buildButton('Button 2', Colors.green),
            //     SizedBox(height: 20),
            //     buildButton('Button 3', Colors.red),
            //     SizedBox(height: 20),
            //     //print('Selected button value: $selectedButtonValue'),
            //   ],
            // ),

            SizedBox(
              height: 30,
            ),

            Center(
              child: Container(
                child: ToggleButtons(
                  // direction: vertical ? Axis.vertical : Axis.horizontal,
                  onPressed: (int index) {
                    setState(() {
                      // The button that is tapped is set to true, and the others to false.
                      for (int i = 0; i < _selectedMeal.length; i++) {
                        _selectedMeal[i] = i == index;
                        print(_selectedMeal[i]);
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  selectedBorderColor: Colors.white,
                  selectedColor: Colors.white,
                  fillColor: Colors.redAccent,
                  color: Colors.grey,
                  constraints: const BoxConstraints(
                    minHeight: 40.0,
                    minWidth: 120.0,
                  ),
                  isSelected: _selectedMeal,
                  children: typeOfMeal,
                ),
              ),
            ),

            // SizedBox(
            //   height: 30,
            // ),
            //

            Expanded(child: SizedBox()),
            CheckboxListTile(
              title: Text('Are you currently a student?'),
              activeColor: Colors.redAccent,
              checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                  if (isChecked) {
                    isStudent=true;
                    print(isStudent);
                  } else {
                    // Perform specific action when checkbox is unchecked
                   isStudent=false;
                   print(isStudent);
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('I agree with terms and conditions'),
              activeColor: Colors.redAccent,
              checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              value: isAcceptTerms,
              onChanged: (bool? value) {
                setState(() {
                  isAcceptTerms = value ?? false;
                  if (isAcceptTerms) {
                    // Perform specific action when checkbox is checked
                    print('Checkbox is checked!');
                  } else {
                    // Perform specific action when checkbox is unchecked
                    print('Checkbox is unchecked!');
                  }
                });
              },
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 50),
              child: MaterialButton(
                  onPressed: () {

                    if(isStudent==true){

                      Navigator.push(context, MaterialPageRoute(builder: (context) => collegeLocation()));
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => office_Location()));}
                  },
                  padding: const EdgeInsets.only(right: 0.0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF8639B1),
                          Color(0xFFEB2133),
                          Color(0xFFFD9E41)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 60.0,
                            minHeight: 60.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: Text(
                          'Set your delivery location',
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  //
  // Widget buildButton(String buttonText, Color buttonColor) {
  //   bool isSelected = selectedButtonValue == buttonText;
  //
  //   return ElevatedButton(
  //     onPressed: () {
  //       setState(() {
  //         selectedButtonValue = buttonText;
  //       });
  //     },
  //     style: ButtonStyle(
  //       backgroundColor: isSelected
  //           ? MaterialStateProperty.all<Color>(buttonColor.withOpacity(0.8))
  //           : MaterialStateProperty.all<Color>(buttonColor),
  //     ),
  //     child: Text(
  //       buttonText,
  //       style: TextStyle(
  //         color: isSelected ? Colors.white : Colors.black,
  //       ),
  //     ),
  //   );
  // }
}
