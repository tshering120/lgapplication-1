import 'package:lgapplication/utls/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:share/share.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changetwoButton = false;
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.dzongkhaRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToContact(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.contactRoute);
    }
  }

  moveToFaq(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.faqRoute);
    }
  }

  moveToEnglish(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changetwoButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.englishRoute);
      setState(() {
        changetwoButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'assets/images/homebg2.png',
              fit: BoxFit.cover,
            )),
            Center(
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 400,
                    ),
                    Text(
                      "LOCAL GOVERNANCE \n OF BHUTAN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'Asap',
                        color: Color(0XFF2e3251),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 190,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "རྫོང་ཁ།",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Uchen' 'serif',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Color(0XFFd89f50),
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 5)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () => moveToEnglish(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changetwoButton ? 50 : 190,
                        height: 50,
                        alignment: Alignment.center,
                        child: changetwoButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "English",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Color(0XFF5a816c),
                            borderRadius: BorderRadius.circular(
                                changetwoButton ? 50 : 5)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: Container(
                            width: 43,
                            height: 43,
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () {
                                Share.share(
                                    'http://play.google.com/store/apps/details?id=homeworkoutomeworkouts.noequipment');
                              },
                            ),
                            decoration: BoxDecoration(
                                color: Color(0XFF3c5f4b),
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          child: Container(
                            width: 43,
                            height: 43,
                            decoration: BoxDecoration(
                                color: Color(0XFF3c5f4b),
                                borderRadius: BorderRadius.circular(3)),
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: Icon(
                                Icons.question_answer,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () {
                                FaqPageModel(context);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          child: Container(
                            width: 43,
                            height: 43,
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () {
                                ContactPageModel(context);
                              },
                            ),
                            decoration: BoxDecoration(
                                color: Color(0XFF3c5f4b),
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void FaqPageModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return new Scaffold(
          body: new Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Feedback',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.cancel))
                ],
              ),
              new ListTile(
                leading: const Icon(Icons.email),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(Icons.question_answer),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Your Query here",
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 190,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Uchen' 'serif',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0XFFd89f50),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
        );
      });
}

void ContactPageModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            height: MediaQuery.of(context).size.height * .60,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgsplash.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/com_bg.png",
                            height: 80,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.cancel))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "HELVETAS Swiss Intercooperation Bhutan",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'HELVETAS is an international network of independent affiliate member organisations working in the field of development cooperation and emergency response.',
                            style: TextStyle(
                              fontSize: 15,
                              height: 2,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.call),
                          onPressed: () {
                            _callNumber("2 322 870");
                          },
                        ),
                        Text('2 322 870')
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: _launchURL,
                            child: Text(
                              'Visit Our Website',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ));
      });
}

_callNumber(String phoneNumber) async {
  String number = phoneNumber;
  await FlutterPhoneDirectCaller.callNumber(number);
}

Future<void> _launchURL() async {
  const url = 'https://wwwelvetas.org/en/bhutan';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
