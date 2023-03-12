//import 'dart:io';
import 'package:flutter/material.dart';
import'package:login_phone/homeLocation.dart';
import 'package:login_phone/search%20address/searchAddress.dart';
import 'package:image_picker/image_picker.dart';






class collegeLocation extends StatefulWidget {
  const collegeLocation({Key? key}) : super(key: key);

  @override
  State<collegeLocation> createState() => _collegeLocationState();
}

class _collegeLocationState extends State<collegeLocation> {
  final ImagePicker _picker = ImagePicker();
  Future pickImage()async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }
  //final XFile? image = await _picker.pickImage(source: ImageSource.gallery);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Text(
                  'Set college location',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      fontSize: 32),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Text(
                  'Mind sharing your college address to ensure smooth delivery without any hassle',
                  style: TextStyle(

                      color: Color(0xff808080),
                      fontSize: 14),
                ),
              ),
              SizedBox(height: 40,),
              MaterialButton(
                onPressed: (){
                    pickImage();
                    print(pickImage());
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                  child: Center(child: Text(" Upload College Id")),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Expanded(
                      child: Padding(
                        padding:EdgeInsets.only(left: 10.0),
                        child: TextField(
                          onChanged: (value) {
                            // phone=value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "College name / Area / Block No",
                          ),
                          keyboardType:
                          TextInputType.text, // set the keyboard type to number
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      onChanged: (value) {
                        // phone=value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Building / Floor ",
                      ),
                      keyboardType:
                      TextInputType.text, // set the keyboard type to number
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      onChanged: (value) {
                        // phone=value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Direction to reach",
                      ),
                      keyboardType:
                      TextInputType.text, // set the keyboard type to number
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Expanded(child: searchAddress()),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 50),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => homeLocation()));
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
                            'Add your home address',
                            style: TextStyle(color: Colors.white),
                          )),
                    )),
              ),

            ],
          ),
        )
    );
  }
}
