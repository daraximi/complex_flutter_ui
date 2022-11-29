import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:complex_flutter_ui/colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("assets/video_info.json").then((value){
      info = json.decode(value);
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              color.AppColor.gradientFirst.withOpacity(0.8),
              color.AppColor.gradientSecond.withOpacity(0.9)
            ],
              begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight
          )
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 70,left: 25,right: 25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap:(){
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios,size: 20,color: color.AppColor.secondPageTopIconColor,)),
                      Expanded(child: Container()),
                      Icon(Icons.info_outline,size: 20,color: color.AppColor.secondPageTopIconColor,)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("Legs Toning",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),),
                  SizedBox(height: 5,),
                  Text("and Glutes Workout",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color.AppColor.secondPageContainerGradient1stColor,
                              color.AppColor.secondPageContainerGradient2ndColor
                            ],begin: Alignment.bottomLeft,
                            end: Alignment.topRight
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.timer, size: 20, color: color.AppColor.secondPageIconColor,),
                            SizedBox(width: 5,),
                            Text("68 min",
                            style: TextStyle(
                                fontSize: 16,
                            color: color.AppColor.secondPageIconColor),)
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 230,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  color.AppColor.secondPageContainerGradient1stColor,
                                  color.AppColor.secondPageContainerGradient2ndColor
                                ],begin: Alignment.bottomLeft,
                                end: Alignment.topRight
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.handyman_outlined, size: 20, color: color.AppColor.secondPageIconColor,),
                            SizedBox(width: 5,),
                            Text("Resistance band, kettle bell",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.secondPageIconColor),)
                          ],
                        ),
                      ),


                    ],
                  ),


                ],
              ),
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70)
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Text("Circuit 1: Legs Toning",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: color.AppColor.circuitsColor
                      ),),
                      Expanded(child: Container()),
                      Row(children: [
                        Icon(Icons.loop,
                        size: 28,
                        color: color.AppColor.loopColor,),
                        SizedBox(width: 10,),
                        Text("3 sets",
                        style: TextStyle(
                          fontSize: 15,
                          color: color.AppColor.setsColor
                        ),)
                      ],),
                      SizedBox(width: 30,)
                    ],
                  ),
                  SizedBox(height: 14,),
                  Divider(
                    height: 1,
                    thickness: 6,
                    color: color.AppColor.secondPageContainerGradient1stColor.withOpacity(0.1),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      
                      child: ListView(
                        children: [
                          //1Done
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/anotherside.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Side Plank",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),),
                                    Text("60 Seconds",
                                    style:TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300
                                    ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //2Done
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/bells.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Abs",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("45 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //3Done
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/chest.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Chest",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("60 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //4done mountain
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/climbers.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Mountain climbers",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("45 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //5DOneGlutes
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/glutes.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Glutes",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("45 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //6Donesquatjumps
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/jumpers.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Squat jumps",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("60 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //7Donesumo squats
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/sumo.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Sumo squats",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("45 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //8Donejumps
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/jumps.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Jumps",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("45 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //9DoneSide bar
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/sides.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Side bar",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("30 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),
                          //10DoneSquats
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  child: Image(
                                    image: AssetImage('assets/fff/squats.jpg'),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("Squats",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    Text("60 Seconds",
                                      style:TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300
                                      ) ,)
                                  ],
                                )

                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            thickness: 3,
                          ),



                        ],
                      )
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
