import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loneapp/res/colors_constant.dart';
import 'package:loneapp/screens/cal_emi/CalEmi.dart';
import 'package:loneapp/screens/kyc_screens/pan_card_details.dart';
import 'package:loneapp/screens/verify_number/verify_number.dart';
import 'package:loneapp/utillity/form_validator.dart';
import 'package:overlay_screen/overlay_screen.dart';

class PanCard extends StatefulWidget {
  PanCard({Key? key}) : super(key: key);

  @override
  _PanCardState createState() => _PanCardState();
}

class _PanCardState extends State<PanCard> {
  String? _genderRadioBtnVal;
  XFile? _imagePan;
  final ImagePicker _picker = ImagePicker();
   TextEditingController panController = TextEditingController();
  GlobalKey<FormState> panfoForm = new GlobalKey();

 contentBox(context, message) {
    return Stack(
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.only(left: 20, top: 45 + 20, right: 20, bottom: 20),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 10),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Text(
                "Photo Required",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "PAN Card Image required, plese uplode photo.",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.center,
                child: FlatButton(
                    color: AppColors.primery_color,
                    onPressed: () {
                      Navigator.of(context).pop();
                   
                    },
                    child: Text(
                      "OK",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                child: Image.asset("assets/images/logo.jpeg")),
          ),
        ),
      ],
    );
  }

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
     OverlayScreen().saveScreens({
     
      'custom1': CustomOverlayScreen(
        backgroundColor: Colors.black.withOpacity(0.5),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.backup,
              color: Colors.white,
            ),
            SizedBox(height: 10.0),
            Text(
              "Uploading documents and Verifying....",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
     
    });
    return Scaffold(
 appBar: AppBar(
            toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Pan Card Information"),
            
             Image.asset(
                  'assets/images/logo.jpeg',
                  height: 60,
                ),
          ]
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/images/new.jpeg'),
          fit: BoxFit.cover,
            
        ),
        backgroundColor: Colors.transparent,
      ),




  bottomNavigationBar: Container(
        
        height:100,
        
        width: double.infinity,
        decoration: BoxDecoration(
                       image: DecorationImage(
          image: AssetImage('assets/images/bottom.jpeg'),
          fit: BoxFit.fill,
        ),
       
        ),
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
        child: GestureDetector(
            onTap: () async {

              if(panfoForm.currentState!.validate()){
if(_imagePan != null){
  
                OverlayScreen().show(
                  context,
                  identifier: 'custom1',
                );
                await Future.delayed(
                  Duration(seconds: 6),
                  () => OverlayScreen().pop(),
                );
                 Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => CalEMI(),
                ),
              );
           

}else{
   showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: contentBox(context,"Front Side Photo, "),
                );
                // return CustomDialogBox(
                //   title: "Instant Fast Loan OTP",
                //   descriptions: "Your one time password (OTP) is:",
                //   otp: "9059",
                //   text: "Yes",
                //   setOtp: updateOTP(),
                // );
              });
}
              }
             
            },
          child: Container(
      margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
       
                color: AppColors.accent_color,
                borderRadius: BorderRadius.all(Radius.circular(40))),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                    " Submit ",
                    style: TextStyle(
                        color: AppColors.primery_color,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
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
                    Form(
                 key:panfoForm,
                 child:  TextFormField(
                   validator: validateRequired,
                    controller: panController,
                    onChanged: (String val) {
                      // _formProvider.validateName(val);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        //errorText: _formProvider.name.error,
                        hintText: "Enter Pan Card Number",
                        labelText: "Enter Pan Card Number"),
                  ),),
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
                                :"Pan_Card.png",
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
