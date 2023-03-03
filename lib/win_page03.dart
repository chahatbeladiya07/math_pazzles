import 'package:flutter/material.dart';
import 'main_puzzle02.dart';

class win_page extends StatefulWidget {
  int level;
  win_page(this.level, {super.key});
  @override
  State<win_page> createState() => _win_pageState();
}

class _win_pageState extends State<win_page> {
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
              Text("PUZZLE ${widget.level+1} COMPLETED",
                style: TextStyle(
                    fontSize: heights*0.030,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurple
              ),
              ),
              SizedBox(height: heights*0.025,),
              Image.asset("assets/trophy.png",height: heights*0.29,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => main_puzzle(widget.level+1),));
                },
                child: Container(
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
              ),
              InkWell(
                onTap: (){
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => first_page(),));
                  Navigator.pop(context);
                },
                child: Container(
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
