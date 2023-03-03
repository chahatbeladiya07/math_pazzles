import 'package:flutter/material.dart';

class win_page extends StatefulWidget {
  const win_page({Key? key}) : super(key: key);

  @override
  State<win_page> createState() => _win_pageState();
}

class _win_pageState extends State<win_page> {
  @override
  Widget build(BuildContext context) {
    double heights=MediaQuery.of(context).size.height;
    double widths=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: heights,
          width: widths,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: heights*0.058,),
              Text("PUZZLE 12 COMPLETED",
                style: TextStyle(
                    fontSize: heights*0.030,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurple
              ),
              ),
              SizedBox(height: heights*0.025,),
              Image.asset("assets/trophy.png",height: heights*0.29,),
              Container(
                margin: EdgeInsets.only(top: heights*0.035),
                alignment: Alignment.center,
                height: heights*0.069,
                width: widths*0.5,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5,color: Colors.black38),
                  borderRadius: BorderRadius.circular(heights*0.02),
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade600,
                    Colors.white,
                    Colors.grey.shade500,
                    Colors.grey.shade600,
                  ]),
                ),
                child: Text("CONTINUE",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,fontSize: heights*0.03)),
              ),
              Container(
                margin: EdgeInsets.only(top: heights*0.016),
                alignment: Alignment.center,
                height: heights*0.069,
                width: widths*0.5,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5,color: Colors.black38),
                  borderRadius: BorderRadius.circular(heights*0.02),
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade600,
                    Colors.white,
                    Colors.grey.shade500,
                    Colors.grey.shade600,
                  ]),
                ),
                child: Text("MAIN MENU",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,fontSize: heights*0.03)),
              ),
              Container(
                margin: EdgeInsets.only(top: heights*0.016,bottom: heights*0.04),
                alignment: Alignment.center,
                height: heights*0.069,
                width: widths*0.5,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5,color: Colors.black38),
                  borderRadius: BorderRadius.circular(heights*0.02),
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade600,
                    Colors.white,
                    Colors.grey.shade500,
                    Colors.grey.shade600,
                  ]),
                ),
                child: Text("BUY PRO",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,fontSize: heights*0.03)),
              ),
              Text("SHARE THIS PUZZLE",
                style: TextStyle(
                  fontSize: heights*0.030,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple
              ),),
              Container(
                margin: EdgeInsets.only(top: heights*0.015),
                padding: EdgeInsets.all(heights*0.013),
                height: heights*0.06,
                width: heights*0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(heights*0.02),
                  gradient: LinearGradient(
                      end: Alignment.bottomLeft,
                      begin: Alignment.topRight,
                      colors: [
                    Colors.grey.shade600,
                        Colors.grey.shade500,
                    Colors.white,
                    Colors.grey,
                  ])
                ),
                child: Image.asset("assets/shareus.png",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
