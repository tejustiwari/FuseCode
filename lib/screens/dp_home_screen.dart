import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(DpHomeScreen()) ;
class DpHomeScreen extends StatefulWidget {
  @override
  _DpHomeScreenState createState() => _DpHomeScreenState();
}

class _DpHomeScreenState extends State<DpHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24a7df),
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: false,
                  elevation: 0,
                  backgroundColor: Color(0xff24a7df),
                  expandedHeight: 400,
                  automaticallyImplyLeading: false,
                  title: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          CupertinoIcons.back,
                          size: 30,
                          color: Color(0xff24a7df),
                        ),
                      ),
                    ),
                  ),
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "lib/assets/bg2.png",
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                )
              ];
            },
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 23),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(54)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dynamic Programming",
                          style: TextStyle(
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.bold,
                              fontSize: 33,
                              color: Color(0xff121212)),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),
                    CustomTile(
                      title: "0-1 Knapsack",
                      duration: "Watch : 20 min   Read : 10 min",
                      selected: true,
                    ),
                    CustomTile(
                      title: "Unbounded Knapsack",
                      duration: "Watch : 20 min   Read : 10 min",
                    ),
                    CustomTile(
                      title: "Longest Common Subsequence",
                      duration: "Watch : 20 min   Read : 10 min",
                    ),
                    CustomTile(
                      title: "Longest Increasing Subsequence",
                      duration: "Watch : 20 min   Read : 10 min",
                    ),
                    CustomTile(
                      title: "Matrix Chain Multiplication",
                      duration: "Watch : 20 min   Read : 10 min",
                    ),
                    CustomTile(
                      title: "DP on Trees",
                      duration: "Watch : 20 min   Read : 10 min",
                    ),
                    CustomTile(
                      title: "Digit DP",
                      duration: "Watch : 20 min   Read : 10 min",
                    ),
                    CustomTile(
                      title: "Bitmask DP",
                      duration: "Watch : 20 min          Read : 10 min",
                    ),
                    SizedBox(
                      height: 130,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -5),
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 15),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(54),
                    topRight: Radius.circular(54),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 78,
                      decoration: BoxDecoration(
                          color: Color(0xffC8D1F2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 64,
                        margin: EdgeInsets.only(bottom: 12),
                        child: RaisedButton(
                          onPressed: () {},
                          elevation: 0,
                          child: SvgPicture.asset(
                            "lib/assets/bag.svg",
                            color: Color(0xff3657e0).withOpacity(0.81),
                          ),
                          color: Color(0xffD9E1FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 78,
                        decoration: BoxDecoration(
                            color: Color(0xff2C48BA),
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: 64,
                          margin: EdgeInsets.only(bottom: 12),
                          child: RaisedButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Text(
                              "Your Personal Notes",
                              style: TextStyle(
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xffffffff),
                              ),
                            ),
                            color: Color(0xff3657E0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}





class CustomTile extends StatelessWidget {
  final bool selected;
  final String title;
  final String duration;
  const CustomTile({
    this.selected = false,
    this.title,
    this.duration,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            margin: EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: selected ? Color(0xfff93cd92) : Color(0xff24a7df),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: SvgPicture.asset(
                  "lib/assets/play.svg",
                  color: selected ? Color(0xfff5a5857) : Colors.white,
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w500,
              fontSize: 21,
              color: Color(0xff000000),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          subtitle: Text(
            duration,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: "Gilroy",
              fontSize: 18,
              color: Color(0xff777777),
            ),
          ),
        ),
        Divider(
          indent: 80,
          height: 20,
          color: Color(0xffD9D9D9).withOpacity(0.69),
          thickness: 1.5,
        )
      ],
    );
  }
}
