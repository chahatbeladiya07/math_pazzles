import 'package:flutter/material.dart';
import 'package:math_pazzles/win_page03.dart';

class main_puzzle extends StatefulWidget {
  const main_puzzle({Key? key}) : super(key: key);
  @override
  State<main_puzzle> createState() => _main_puzzleState();
}

class _main_puzzleState extends State<main_puzzle> {
  @override
  Widget build(BuildContext context) {
    double heights= MediaQuery.of(context).size.height;
    double widths= MediaQuery.of(context).size.width;
    print(heights*0.01);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/gameplaybackground.jpg"),
                    fit: BoxFit.fill
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(heights*0.01),
                    child: Image.asset("assets/skip.png",height: heights*0.06),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: heights*0.012),
                    height: heights*0.075,
                    width: widths*0.57,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/level_board.png"),
                        fit: BoxFit.fill
                      ),
                    ),
                    child:  Text("Puzzle 1",style: TextStyle(fontSize: heights*0.05,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(heights*0.01),
                    child: Image.asset("assets/hint.png",height: heights*0.06,),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: heights*0.013),
                height: heights*0.60,
                width: widths*0.92,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/p1.png"),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: heights * 0.15,
                width: widths,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: heights * 0.05,
                          width: widths * 0.60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(heights*0.01),
                          ),
                        ),
                        SizedBox(
                          height: heights * 0.08,
                          width: widths * 0.12,
                          child: Image.asset("assets/delete.png",fit: BoxFit.fill,),
                          // decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     image: DecorationImage(
                          //         image: AssetImage("assets/delete.png",),
                          //         fit: BoxFit.fill
                          //     )
                          // ),
                        ),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => win_page(),));
                        }, child: Text("Submit", style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: heights*0.03),)),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths* 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("1",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("2",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("3",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths* 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("4",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths* 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("5",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("6",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("7",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths* 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {}, child: Text("8",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths* 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {},
                              child: Text("9",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: heights * 0.06,
                          width: widths * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.white10)
                          ),
                          child: TextButton(onPressed: () {},
                              child: Text("0",
                              style: TextStyle(
                                  color: Colors.white, fontSize: heights*0.020))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
