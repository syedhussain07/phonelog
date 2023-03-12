import 'package:flutter/material.dart';
import 'package:login_phone/search%20address/network_utilities.dart';
import 'package:login_phone/search%20address/autocompletePrediction.dart';
import 'package:login_phone/search%20address/placeAutoComplete.dart';
import 'package:login_phone/search%20address/location_tiles.dart';

String apiKey = "AIzaSyB9s9ovT8n8hB9TzvsMRg5FJ_12cZUMHlM";

class searchAddress extends StatefulWidget {
  const searchAddress({Key? key}) : super(key: key);

  @override
  State<searchAddress> createState() => _searchAddressState();
}

class _searchAddressState extends State<searchAddress> {
  List<AutocompletePrediction> placePrediction = [];
  void placeAutocomplete(String query) async {
    Uri uri =
        Uri.https('maps.googleapis.com', 'maps/api/place/autocomplete/json', {
      "input": query, //query Parameter
      "key": apiKey,
    });
    String? response = await NetworkUtility.fetchUrl(uri);

    if (response != null) {
      PlaceAutocompleteResponse result =  PlaceAutocompleteResponse.parseAutocompleteResult(response);
      if (result.predictions != null) {

        setState(() {
          placePrediction = result.predictions!;
        });
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(width: 40, child: Icon(Icons.pin_drop_outlined)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                        onChanged: (value) {
                          placeAutocomplete(value);
                        },
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          hintText: "Search your office location",
                        ),
                        textInputAction: TextInputAction.search,
                        keyboardType: TextInputType.number,
                      ))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 2,
          thickness: 2,
          color: Color(0xfff5f5f5),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
          child: ElevatedButton.icon(
            onPressed: () {
              // placeAutocomplete("Delhi");
            },
            icon: Icon(
              Icons.map_outlined,
              color: Colors.grey,
            ),
            label: Text(
              "Use my Current Location",
              style: TextStyle(color: Colors.grey),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(double.maxFinite, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 2,
          thickness: 2,
          color: Color(0xfff5f5f5),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: placePrediction.length,
              itemBuilder: (context,index) =>
                  LocationListTile(
                    press: () {
                      print(placePrediction[index].description!);

                    },
                    location:placePrediction[index].description!,
                  )
          ),
        ),



      ],
    );
  }
}
