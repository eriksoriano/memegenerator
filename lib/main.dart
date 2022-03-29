import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'myPopFriend_Creator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  // @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var answerText = '';
  var showPic = "assets/avatar.png";

  String afterText = "";
  String afterText2 = "";

  var photoCombos = [
    "assets/combo1.png",
    "assets/combo2.png",
    "assets/combo3.png",
    "assets/combo4.png",
    "assets/combo5.png",
    "assets/combo6.png",
    "assets/combo7.png",
    "assets/combo8.png",
    "assets/combo9.png",
    "assets/combo10.png",
    "assets/combo11.png",
    "assets/combo12.png",
    "assets/combo13.png",
    "assets/combo14.png",
    "assets/combo15.png",
    "assets/combo16.png",
    "assets/combo17.png",
    "assets/combo18.png",
    "assets/combo19.png",
    "assets/combo20.png",
    "assets/combo21.png",
    "assets/combo22.png",
    "assets/combo23.png",
    "assets/combo24.png",
    "assets/combo25.png",
    "assets/combo26.png",
    "assets/combo27.png"
  ];

  var dropdownvalue = '';
  var headoptions = ['', 'MINNIE', 'NARUTO', 'MARIO'];

  var dropdownvalue2 = '';
  var faceoptions = ['', 'SONIC', 'SPONGEBOB', 'PIKACHU'];

  var dropdownvalue3 = '';
  var bodyoptions = ['', 'CARTMAN', 'GOKU', 'PATRICK'];

  void _createCharacter() {
    setState(() {
      if (dropdownvalue == '' || dropdownvalue2 == '' || dropdownvalue3 == '') {
        afterText = "You MUST choose 3 items before pressing create";
      } //1ST combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Super Sonic (Meanie) Mouse";
        showPic = photoCombos[0];
      } //2ND combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Eric Cartman, The Skinny Ninja Hedgehog";
        showPic = photoCombos[1];
      } //3RD combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Super Mario, The Fat Hedgehog Abomination";
        showPic = photoCombos[2];
      } // ******************************************
      //4TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Anime Hero: NaGoku Strong Pants";
        showPic = photoCombos[3];
      } // 5TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "SpongeMouse AnimePants";
        showPic = photoCombos[4];
      } //6TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Super Saiyan Sponge Bro";
        showPic = photoCombos[5];
      } //7TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Super Pika Patriccia to the Rescue";
        showPic = photoCombos[6];
      }
      //8TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Patrick The Blue Plumber";
        showPic = photoCombos[7];
      }
      //9TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Underwater Disney Diva";
        showPic = photoCombos[8];
      }
      //10TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Super Patrick Bros.";
        showPic = photoCombos[9];
      }
      //11TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Mamma Mia! It's a Jellyfish Bruh!";
        showPic = photoCombos[10];
      }
      //12TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "I Ate The Pokeballs, Mushrooms and Dragon Balls, So What?";
        showPic = photoCombos[11];
      }
      //13TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Super Saiyan Hedgehog!!!";
        showPic = photoCombos[12];
      }
      //14TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Disney Magic superstar";
        showPic = photoCombos[13];
      }
      //15TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Happy Mouse From South Park";
        showPic = photoCombos[14];
      }
      //16TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Pika Pika!, I am a Fat Mouse";
        showPic = photoCombos[15];
      }
      //17TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Kiss Me, I am a Shocking Disney Diva, from Bikini Bottom";
        showPic = photoCombos[16];
      }
      //18TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Dragon Ball Pika Mouse";
        showPic = photoCombos[17];
      }
      //19TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "Patrick the Sonic Ninja";
        showPic = photoCombos[18];
      }
      //20TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "PikaStar Shippuden";
        showPic = photoCombos[19];
      }
      //21TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[3]) {
        afterText = "SpongeStar Shippuden, Anime Superstar!!!";
        showPic = photoCombos[20];
      }
      //22TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[2] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Eric Naruto Ninja Pants";
        showPic = photoCombos[21];
      }
      //23TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "The South Park Electric Ninja: Pikaruto Shippuden";
        showPic = photoCombos[22];
      }
      //24TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Naruchu Super Saiyan Hero";
        showPic = photoCombos[23];
      }
      //25TH combo
      else if (dropdownvalue == headoptions[3] &&
          dropdownvalue2 == faceoptions[3] &&
          dropdownvalue3 == bodyoptions[1]) {
        afterText = "Super Pikabro From South Park";
        showPic = photoCombos[24];
      }
      //26TH combo
      else if (dropdownvalue == headoptions[1] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Blue Goku Mouse";
        showPic = photoCombos[25];
      }
      //27TH combo
      else if (dropdownvalue == headoptions[2] &&
          dropdownvalue2 == faceoptions[1] &&
          dropdownvalue3 == bodyoptions[2]) {
        afterText = "Dragon Ball Hero Sonuto";
        showPic = photoCombos[26];
      } else {
        afterText = "try again";
        showPic = "assets/avatar.png";
      }
    }); // start of second switch
  }

  // @override
  void _resetButton() {
    setState(() {
      dropdownvalue = '';
      dropdownvalue2 = '';
      dropdownvalue3 = '';
      afterText = '';
      _subOrNot = false;
      _subResult = '';
      showPic = "assets/avatar.png";
      _shuffleImages = 'assets/underwater.jpg';
    });
  }

  bool _subOrNot = false;
  double _subscriptionNum = 1.0; // it will say its a number so double.parse
  String _subResult = '';

  // ********************************************************************
  //void means nothing return and will just update setState (in this case)
  // ********************************************************************

  void _updateOutput() {
    // checks state of switch and slider
    if (_subOrNot == false) {
      _subResult = "";
    } else {
      switch (_subscriptionNum.toString()) {
        case '1.0':
          _subResult = "0/10 - HATE IT";
          break;
        case '2.0':
          _subResult = " 5/10 - NOT BAD";
          break;
        case '3.0':
          _subResult = " 10/10 - I LOVE IT";
          break;
      }
    }
  }

  void _updateSwitch(bool newValue) {
    // newValue will be the replaced value of boolean
    setState(() {
      _subOrNot = newValue;
      _updateOutput();
    });
  }

  void _updateSlider(double newValue) {
    setState(() {
      _subscriptionNum = newValue;
      _updateOutput();
    });
  }

  // var _allTextTogether = afterText +

  // @override
  // void initState() {}
// *******************************************************************
//              variable to shuffle background image
// *******************************************************************
  var sceneShuffle = [
    "assets/um.jpg",
    "assets/um2.jpg",
    "assets/underwater.jpg",
    "assets/zelda.webp",
    "assets/black.jpg",
    "assets/tokyonight.jpeg",
    "assets/prime.jpg",
    "assets/nite2.jpg",
    "assets/sector7.webp",
    "assets/neon.jpg",
    "assets/moon.jpg",
    "assets/miaminite.jpg",
    "assets/paris.jpeg",
    "assets/la.jpg"
  ];

  var _shuffleImages = 'assets/black.jpg';

  void shufflebackground() {
    setState(() {
      var rng = new Random();
      _shuffleImages = sceneShuffle[rng.nextInt(sceneShuffle.length)];
    });
  }

// *******************************************************************
//                        App starts below
// *******************************************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   centerTitle: true,
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // opacity: 100,
            image: AssetImage(
              _shuffleImages,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              child: Text(
                afterText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 15.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 15.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                  // backgroundColor: Colors.black,
                ),
              ),
            ),
            Container(
              child: Image(
                // width: 300,
                height: 360,
                image: AssetImage(showPic),
                fit: BoxFit.fitWidth,
              ),
            ),

            // const SizedBox(height: 10),
            // Text(
            //   "Select 3 characters below to create a collage of your own character",
            //   style: TextStyle(
            //     // backgroundColor: Colors.white,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 24,
            //     fontStyle: FontStyle.italic,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // const SizedBox(height: 10),
            Row(
              // row contains 3 columns
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    const Text(
                      "Character1:",
                      style: TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    DropdownButton(
                      value: dropdownvalue,
                      items: headoptions
                          .map((String headoptions) => DropdownMenuItem(
                              child: Text(headoptions), value: headoptions))
                          .toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue = newvalue!;
                        });
                      },
                      dropdownColor: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 40,
                      iconEnabledColor: Colors.white,
                      // elevation: 20,
                      alignment: Alignment.center,
                      style: const TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      underline: Container(
                        height: 5,
                        color: Colors.white,
                      ),
                    ),
                  ], // ****end of select HEAD column****
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    const Text(
                      "Character2:",
                      style: TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    DropdownButton(
                      value: dropdownvalue2,
                      items: faceoptions
                          .map((String faceoptions) => DropdownMenuItem(
                              child: Text(faceoptions), value: faceoptions))
                          .toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue2 = newvalue!;
                        });
                      },
                      dropdownColor: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 40,
                      iconEnabledColor: Colors.white,
                      // elevation: 20,
                      alignment: Alignment.center,
                      style: const TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      underline: Container(
                        height: 5,
                        color: Colors.white,
                      ),
                    ),
                  ], // ****end of select FACE column****
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    const Text(
                      "Character3:",
                      style: TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                    DropdownButton(
                      value: dropdownvalue3,
                      items: bodyoptions
                          .map((String bodyoptions) => DropdownMenuItem(
                              child: Text(bodyoptions), value: bodyoptions))
                          .toList(),
                      onChanged: (String? newvalue) {
                        setState(() {
                          dropdownvalue3 = newvalue!;
                        });
                      },
                      dropdownColor: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 20,
                      iconEnabledColor: Colors.white,
                      // elevation: 20,
                      alignment: Alignment.center,
                      style: const TextStyle(
                        // backgroundColor: Colors.black,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      underline: Container(
                        height: 5,
                        color: Colors.white,
                      ),
                    ),
                  ], // ****end of select BODY column****
                ),
              ],
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _createCharacter,
              child: Text(
                'CREATE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.yellow,
                primary: Colors.deepOrange,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                // ElevatedButton(
                //   onPressed: _resetButton,
                //   child: Text(
                //     'RESET',
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 20,
                //       color: Colors.white70,
                //     ),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     shadowColor: Colors.black,
                //     primary: Colors.grey,
                //   ),
                // ),
                // const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: shufflebackground,
                  child: Text(
                    'NEW SCENE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    primary: Colors.lime,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _resetButton,
                  child: Text(
                    'RESET',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    primary: Colors.white,
                  ),
                ),
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'TURN ON TO RATE US',
            //       style: TextStyle(
            //         backgroundColor: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 16,
            //         fontStyle: FontStyle.italic,
            //       ),
            //     ),
            //     Switch(
            //       value: _subOrNot, // boolean variable
            //       onChanged: _updateSwitch, // function that updates setState
            //     ),
            //   ],
            // ),
            // Slider(
            //   min: 1,
            //   max: 3,
            //   divisions: 2,
            //   value: _subscriptionNum,
            //   onChanged: _updateSlider,
            //   label: 'Rating',
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Text(
            //       _subResult,
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         backgroundColor: Colors.limeAccent,
            //         color: Colors.black,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: _showMyDialog,
            //       child: Text(
            //         'SUBMIT RATING',
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //             color: Colors.white),
            //       ),
            //       style: ElevatedButton.styleFrom(
            //         shadowColor: Colors.black,
            //         primary: Colors.black,
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  //*****************************************************************************
//               below is a POP-UP dialog box function
//*****************************************************************************

  Future<void> _showMyDialog() async {
    // _createCharacter();
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: const Text(
            'THANK YOU FOR PLAYING',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(answerText, textScaleFactor: 2.0), // answer text here
                Text(
                  "Your Rating: " + _subResult,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text(
                'OKAY',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _resetButton(); // optional; resets everything
              },
            ),
          ],
        );
      },
    );
  }
}

  //*********************************************************************************************************
//   below you can see I tried using "switch" and cases to achieve the character collage combos as well
// but didnt work as planned so I saved it down here in case professor Chuan says I can still use
//**********************************************************************************************************

// else {
//         switch (dropdownvalue) {
//           case 'MICKEY':
//             afterText = dropdownvalue +
//                 " + " +
//                 dropdownvalue2 +
//                 " + " +
//                 dropdownvalue3 +
//                 ":";
//             showPic = photoCombos[1];
//             // showPic2 = photoCombo2[1];
//             // showPic3 = photoCombo3[1];

//             break;
//           case 'NARUTO':
//             afterText =
//                 dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
//             showPic = photoCombos[2];

//             break;
//           case 'MARIO':
//             afterText =
//                 dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
//             showPic = photoCombos[3];

//             break;
//           case 'PIKACHU':
//             afterText =
//                 dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
//             showPic = photoCombos[4];
//             break;
//         }
//       }


    // switch (dropdownvalue2) {
    //   case 'SONIC':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic2 = photoCombo2[1];
    //     break;
    //   case 'NARUTO':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic2 = photoCombo2[2];

    //     break;
    //   case 'MARIO':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic2 = photoCombo2[3];

    //     break;
    //   case 'PIKACHU':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic3 = photoCombo2[4];
    //     break;
    // } // start of THIRD switch
    // switch (dropdownvalue3) {
    //   case 'BRINEY':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic3 = photoCombo3[1];
    //     break;
    //   case 'GOKU':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic3 = photoCombo3[2];

    //     break;
    //   case 'PATRICK':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic3 = photoCombo3[3];

    //     break;
    //   case 'MR KRABS':
    //     afterText =
    //         dropdownvalue + " + " + dropdownvalue2 + " + " + dropdownvalue3;
    //     showPic3 = photoCombo3[4];
    //     break;
    // } // end of THIRD switch()
