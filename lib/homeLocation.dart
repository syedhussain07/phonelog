import 'package:flutter/material.dart';
import 'package:login_phone/search%20address/searchAddress.dart';

class homeLocation extends StatefulWidget {
  const homeLocation({Key? key}) : super(key: key);

  @override
  State<homeLocation> createState() => _homeLocationState();
}

class _homeLocationState extends State<homeLocation> {
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
                  'Set home location',
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
                  'To ensure hassle-free delivery, please provide your home address.',
                  style: TextStyle(

                      color: Color(0xff808080),
                      fontSize: 14),
                ),
              ),
              SizedBox(height: 40,),
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
                            hintText: "Home / Street / Block No",
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
                        hintText: "Apartment / Flat / Area",
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
                     // Navigator.push(context, MaterialPageRoute(builder: (context) => office_Location()));
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
                            'Done',
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
