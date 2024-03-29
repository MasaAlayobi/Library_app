import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:novels_app/Core/Resourse/color_app.dart';
import 'package:novels_app/Core/Resourse/image_app.dart';
import 'package:novels_app/Core/Resourse/string_app.dart';

import 'package:novels_app/feature/Auth/Home/view/home_page.dart';
import 'package:novels_app/feature/Auth/register/view/sgin_up.dart';

class ondoard3 extends StatelessWidget {
  const ondoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(appImage.onboard3Background,
          color: Color.fromARGB(39, 158, 158, 158),),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(
                  child: Image.asset(
                    appImage.onboard3Logo,
                    width: 130,
                    height: 46,
                  ),
                ),
              ),
              //  StaggeredGrid.count(

              //    crossAxisCount: 6,
              //    mainAxisSpacing: 4,
              //    crossAxisSpacing: 4,
              //    children: [
              //      StaggeredGridTile.count(
              //          crossAxisCellCount: 3,
              //          mainAxisCellCount: 2,

              //          child: Container(
              //           width: 300,
              //           height: 200,
              //           color: Colors.red,
              //          )),
              //           StaggeredGridTile.count(

              //          crossAxisCellCount: 6,
              //          mainAxisCellCount: 2,
              //          child:  Container(
              //           width: 300,
              //           height: 400,
              //           color: Colors.black,
              //          ),
              //          ),
              //    ],
              //  )

//             GridView.custom(
//   gridDelegate: SliverStairedGridDelegate(
//     crossAxisSpacing: 48,
//     mainAxisSpacing: 24,
//     startCrossAxisDirectionReversed: true,
//     pattern: [
//       StairedGridTile(0.5, 1),
//       StairedGridTile(0.5, 3 / 4),
//       StairedGridTile(1.0, 10 / 4),
//     ],
//   ),
//   childrenDelegate: SliverChildBuilderDelegate(
//     (context, index) => Tile(index: index),
//   ),
// )
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3,bottom: 25),
                          child: Image.asset(
                           appImage.onboard3Book1 ,
                             width: 121,
                             height: 196,
                            // fit:,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Image.asset(
                            appImage.onboard3Book2,
                            width: 84,
                            height: 119,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top:14,left: 6),
                          child: Image.asset(
                           appImage.onboard3Book3 ,
                            width: 76,
                            height: 116,
                          ),
                        ),
                      ),
                       Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13,left: 6),
                          child: Image.asset(
                           appImage.onboard3Book4 ,
                             width: 70,
                             height: 111,
                          ),
                        ),
                      ),
                       Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 6),
                          child: Image.asset(
                           appImage.onboard3Book5 ,
                             width: 74,
                             height: 129,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                     Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Image.asset(
                            appImage.onboard3Book6,
                             width: 105,
                             height: 178,
                          ),
                        ),
                      ),
                     Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top:3,left: 8,bottom: 30),
                          child: Image.asset(
                            appImage.onboard3Book7,
                             width: 113,
                             height: 199,
                             
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0,bottom: 10),
                child: Text(
                  appString.BOOKHASPOWER,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color:appColor.titleFirstPageColor),
                ),
              ),
              Text(
                appString.subTitleOnboard3,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color:appColor.subTitleFirstPageColor),
              ),
               InkWell(
                onTap: () {
                   Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) {
                             return SginUp();
                           },
                         ),
                       );
                },
                 child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 18, 30, 10),
                    child: Container(
                      width: 230,
                      height: 50,
                      
                      child: Center(
                          child: Text(appString.GetStartedNow,
                              style: TextStyle(color:appColor.white))),
                      decoration: BoxDecoration(
                       color: appColor.basicColor,
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                      ),
                    ),
                  ),
               ),
            ],
          )
        ],
      ),
    );
  }
}
