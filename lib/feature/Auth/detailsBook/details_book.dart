import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:novels_app/Core/Data/books_model.dart';
import 'package:novels_app/Core/Resourse/color_app.dart';
import 'package:novels_app/Core/Resourse/image_app.dart';
import 'package:novels_app/Core/resourse/string_app.dart';

class DetailsBooks extends StatelessWidget {
  const DetailsBooks({super.key, required this.Book});
  final BooksModel Book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor.backgroundInDetails,
        leading: Center(
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: appColor.white,
              )),
        ),
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: appColor.backgroundInDetails,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                     Book.image ,
                      width: 104,
                      height: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          Book.name,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Container(
                            height: 100,
                            width: 160,
                            child: Text(
                              Book.description,
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )),
                        RatingBarIndicator(
                          unratedColor: Color.fromARGB(84, 255, 193, 7),
                          rating: Book.quantity.toDouble(),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 18.0,
                          direction: Axis.horizontal,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31,top: 35),
                child: Container(
                  width: 150,
                  height: 23,
                  child: Text(
                    appString.ABOUTTHEBOOK,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: appColor.subTitleFirstPageColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Container(
                    width: 362,
                    height: 87,
                    child: SingleChildScrollView(
                      child: Text(
                        Book.description,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: appColor.grey,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Container(
                  width: 401,
                  height: 80,
                  decoration: BoxDecoration(
                      color: appColor.taipSearchColo,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    CircleAvatar(
                      backgroundColor: appColor.basicColor,
                      radius: 27,
                      child: Center(
                        child: Icon(
                          Icons.draw,
                          color: appColor.taipSearchColo,
                          size: 30,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          width:55 ,
                          height:19 ,
                          child: Text(
                            appString.AUTHOR,
                            style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color:appColor.authorColor),
                          ),
                        ),
                      ),
                      Container(
                        width:180 ,
                        height:50 ,
                        child: Text(
                          Book.author,
                          style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color:appColor.subTitleFirstPageColor),
                        ),
                      ),
                     ],
                    ),
                    Icon(Icons.star,color: appColor.starColor,)
                  ]),
                ),
              ),
              Center(
                child: Image.asset(appImage.bookImage,
                width: 200,
                height: 120,),
              )
            ],
          ),
         Align(
          alignment: Alignment(0,-0.4 ),
           child: SizedBox(
            width: 320,
            height: 105,
             child: Card(
              color:appColor.white,
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                          showModalBottomSheet(
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 500,
                      width: 500,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                      ),
                    );
                  },
                );
                    },
                    child: CircleAvatar(
                      backgroundColor: appColor.white,
                      radius: 45,
                      child: Center(
                        child: Image.asset(appImage.buyImage),
                    ),
                      ),
                  ),
                           InkWell(
                            onTap: (){},
                             child: CircleAvatar(
                              backgroundColor: appColor.white,
                                                 radius: 45,
                                                 child: Center(
                                                   child: Image.asset(appImage.rentImage),
                                               ),
                                                 ),
                           ),
                           InkWell(
                             child: CircleAvatar(
                              
                              backgroundColor: appColor.white,
                                                 radius: 45,
                                                 child: Center(
                                                   child: Image.asset(appImage.swapImage),
                                               ),
                                                 ),
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
