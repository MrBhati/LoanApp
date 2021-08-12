import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/kyc_screens/pan_card_details.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';

class PanCard extends StatefulWidget {
  PanCard({Key? key}) : super(key: key);

  @override
  _PanCardState createState() => _PanCardState();
}

class _PanCardState extends State<PanCard> {
  String? _genderRadioBtnVal;
  XFile? _imagePan;
  final ImagePicker _picker = ImagePicker();

  selectImage(source, quality) async {
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: quality,
      );

      setState(() {
        _imagePan = pickedFile;
      });
    } catch (e) {
      setState(() {
        print("Error Wile get iamge");
      });
    }
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Gallery'),
                      onTap: () {
                        selectImage(ImageSource.gallery, 50);
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      selectImage(ImageSource.camera, 50);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 105,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          title: Container(
            decoration: BoxDecoration(
              color: AppColors.primery_color,
              borderRadius: BorderRadius.only(
                  //topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(10.0),
                  // topLeft: Radius.circular(40.0),
                  bottomLeft: Radius.circular(10.0)),
            ),
            width: double.infinity,
            height: 105,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Pan Card Information")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: Image.asset(
                      'assets/images/step4.png',
                      height: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              //bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
              //bottomLeft: Radius.circular(10.0)
            ),
          ),
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PanCard(),
                ),
              );
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: AppColors.primery_color,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Submit ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Pan Card Detail",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (String val) {
                      // _formProvider.validateName(val);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        //errorText: _formProvider.name.error,
                        hintText: "Enter Pan Card Number",
                        labelText: "Enter Pan Card Number"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.green, spreadRadius: 1),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            _imagePan == null
                                ? "Uploade Pan Card"
                                : _imagePan?.name ?? "Pan_Card.png",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primery_color,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showPicker(context);
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.primery_color,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
