import 'package:flutter/material.dart';
class puzzle_list extends StatefulWidget {
  const puzzle_list({Key? key}) : super(key: key);

  @override
  State<puzzle_list> createState() => _puzzle_listState();
}

class _puzzle_listState extends State<puzzle_list> {
  @override
  Widget build(BuildContext context) {
    double heights=MediaQuery.of(context).size.height;
    double widhts=MediaQuery.of(context).size.width;
    print(heights/10);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: heights,
          width: widhts,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Text("Select Puzzle",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurple
              ),),
              SizedBox(height: heights*0.016,),
              Expanded(
                child: Container(
                  // color: Colors.yellow,
                  padding: EdgeInsets.only(left: heights/67,right: heights/67,bottom: heights/67),
                  child: GridView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 32,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          // color: Colors.grey,
                          padding: EdgeInsets.all(4),
                          child: Container(
                            alignment: Alignment.center,
                            // margin: EdgeInsets.only(
                            //   left: heights/112,right: heights/112,bottom: heights/67
                            // ),
                            // margin: EdgeInsets.only(right: 10,left: 10),
                            child: Text("${index+1}",style: TextStyle(fontSize: 40,fontFamily: 'chalk'),),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(heights*0.02),
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage("assets/tick.png"),
                                fit: BoxFit.fill
                              ),
                              // color: Colors.yellow,
                            ),
                          ),
                        );
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
