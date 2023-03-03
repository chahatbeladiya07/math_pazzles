import 'package:flutter/material.dart';
import 'package:math_pazzles/puzzle_list04.dart';
import 'main_puzzle02.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: first_page(),
    );
  }
}

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);
  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    double heights=MediaQuery.of(context).size.height;
    double widths=MediaQuery.of(context).size.width;
    double status_bar_height= MediaQuery.of(context).padding.top;
    double bottum_bar_height=MediaQuery.of(context).padding.bottom;
    double body_heights=heights-status_bar_height-bottum_bar_height;
    // print(body_heights*0.040);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: heights-status_bar_height-bottum_bar_height,
          width: widths,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
              fit: BoxFit.fill
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: body_heights*0.085,
              ),
              Text("Maths Puzzles",
                style: TextStyle(color:Colors.indigo,
                    fontSize: body_heights*.05,
                    fontWeight: FontWeight.w600,
                    // fontFamily: "chalk",
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: body_heights*0.034,),
              Container(
                height: body_heights*0.63,
                width: widths*0.92,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/blackboard_main_menu.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => main_puzzle(),));
                      },
                      child: Container(
                        margin: EdgeInsets.all(heights*0.01),
                        alignment: Alignment.center,
                        height: body_heights*0.055,
                        width: widths*0.5,
                        decoration: BoxDecoration(
                          // color: Colors.yellow,
                          // border: Border.all(color: Colors.white,width: 3),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text("CONTINUE",
                          style: TextStyle(fontFamily: "chalk",fontSize: 25,color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => puzzle_list(),));
                      },
                      child: Container(
                        margin: EdgeInsets.all(heights*0.01),
                        alignment: Alignment.center,
                        height: body_heights*0.055,
                        width: widths*0.5,
                        decoration: BoxDecoration(
                          // color: Colors.yellow,
                          // border: Border.all(color: Colors.white,width: 3),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text("PUZZLES",
                          style: TextStyle(fontFamily: "chalk",fontSize: 25,color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        // height: 40,
                        // width: 170,
                        decoration: BoxDecoration(
                          // color: Colors.yellow,
                          // border: Border.all(color: Colors.white,width: 3),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text("BUY PRO",
                          style: TextStyle(fontFamily: "chalk",fontSize: 25,color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: body_heights*0.15,
                    width: widths*0.06,
                  ),
                  // Padding(
                    // padding:  EdgeInsets.only(top: heights*0.036,left: widths*0.10),
                    // child:
              Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("   AD",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: Colors.indigo),),
                        Image.asset("assets/ltlicon.png",height: body_heights*0.090,),
                      ],
                    ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: widths*0.055),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 37,
                              width: 37,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blueGrey.shade700,
                                    Colors.white,
                                    Colors.blueGrey.shade700
                                  ],
                                ),
                              ),
                              child: Image.asset("assets/shareus.png",height: 25,),
                            ),
                            Container(
                              height:37,
                              width: 37,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.blueGrey.shade700,
                                      Colors.white,
                                      Colors.blueGrey.shade700
                                    ],
                                ),
                              ),
                              child: Image.asset("assets/emailus.png",height: 25,),
                            ),
                          ],
                        ),
                        Container(
                          width: widths*0.3,
                          height: body_heights*0.05,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Text("Privacy Policy"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
