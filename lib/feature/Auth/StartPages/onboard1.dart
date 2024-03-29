import 'package:flutter/material.dart';
import 'package:novels_app/Core/Resourse/color_app.dart';
import 'package:novels_app/Core/Resourse/image_app.dart';
import 'package:novels_app/Core/Resourse/string_app.dart';
import 'package:novels_app/feature/Auth/StartPages/onboard3.dart';

class onboard1 extends StatelessWidget {
  const onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Center(
              child: InkWell(
                onTap: () {
                  
                },
                child: Icon(Icons.arrow_back)),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: ((context) => ondoard3())));
                  },
                  child: Text(
                    appString.SKIP,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color:appColor.skipColor),
                  ),
                ),
              )
            ]),
        body: Center(
          child: Column(
            children: [
              Image.asset(appImage.onboard1Image,
              width: 400,
              height: 350,),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  appString.OnlyBOOKCANHELPYOU,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color:appColor.titleFirstPageColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Text(
                  appString.subTitleOnboard1,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color:appColor.subTitleFirstPageColor),
                ),
              ),
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 70,left: 130),
                child: Row(children: [
                
                  Container(
                    width:37 ,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: appColor.basicColor
                      
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: CircleAvatar(backgroundColor: Color(0xff9D9D9D),
                    radius: 4,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: CircleAvatar(backgroundColor: Color(0xff9D9D9D),
                    radius: 4,),
                  ),
                ]),
              ),)
            ],
          ),
        ));
  }
}
