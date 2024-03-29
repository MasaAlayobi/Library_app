// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novels_app/Core/Resourse/color_app.dart';
import 'package:novels_app/Core/Resourse/image_app.dart';
import 'package:novels_app/Core/resourse/string_app.dart';
import 'package:novels_app/feature/Auth/Home/bloc/books_bloc.dart';
import 'package:novels_app/feature/Auth/Home/bloc/search_bloc.dart';
import 'package:novels_app/feature/Auth/detailsBook/details_book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return BlocProvider(
      create: (context) => BooksBloc()..add(getBooks()),
      child: Builder(builder: (context) {
        return Scaffold(
          endDrawer: Drawer(
            width: 180,
            backgroundColor:appColor.taipSearchColo ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(117))
            ),
            child: ListView(
              children: [
                Image.asset('assets/images/onboard/Vector 3 (1).png',
                fit: BoxFit.fill,),
              ],
            ),
          //  shape: RoundedRectangleBorder(
           
          //  ), 
          ),
          body: Stack(
            children: [
              Image.asset(
                appImage.vectorHomeImage,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: appColor.white,
                            radius: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              appString.HI + 'Masa',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 100,
                        height: 30,
                      ),
                      Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            child: Icon(Icons.menu),
                          );
                        }
                      )
                    ],
                  ),
                  SizedBox(
                    width: 100,
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 235,
                          height: 45,
                          child: TextField(
                            onChanged: (value) {
                              // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                            },
                            controller: search,
                            decoration: InputDecoration(
                              fillColor: Color(0xffE7E7E7),
                              label: Row(
                                children: [
                                  Text(
                                    'Search for books',
                                    style: TextStyle(
                                        color: Color.fromARGB(61, 0, 0, 0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffE7E7E7),
                                  ),
                                  borderRadius: BorderRadius.circular(11)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7E7E7),
                                  ),
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: InkWell(
                          onTap: () {
                            context
                                .read<BooksBloc>()
                                .add(SearchWord(label: search.text));
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage(word: search.text)));
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: appColor.basicColor,
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: appColor.white,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    width: 100,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 79,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: appColor.taipSearchColo),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Icon(Icons.sports_basketball,color: Colors.white,),
                                Text(
                                  appString.SCIENCE,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 79,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: appColor.taipSearchColo),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Icon(Icons.sports_basketball,color: Colors.white,),
                                Text(
                                  appString.HISTORY,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 79,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: appColor.taipSearchColo),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Icon(Icons.sports_basketball,color: Colors.white,),
                                Text(
                                  appString.NTHOLOGY,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 79,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: appColor.taipSearchColo),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Icon(Icons.sports_basketball,color: Colors.white,),
                                Text(
                                  appString.FANTASY,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  BlocConsumer<BooksBloc, BooksState>(
                    listener: (context, state) {
                      // TODO: implement listener
                      if (state is NotFoundLabel) {
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: Text('Sorry , There is no Result'),
                          backgroundColor: appColor.basicColor,
                        ));
                        context.read<BooksBloc>().add(getBooks());
                      }
                    },
                    builder: (context, state) {
                      if (state is SuccessFetchBooks) {
                        return Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async{
                              context.read<BooksBloc>().add(getBooks());
                              
                            },
                            child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: state.books.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5,
                                  mainAxisExtent: 230,
                                ),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsBooks(Book: state.books[index])));
                                    },
                                    child: Container(
                                      width: 150,
                                      height: 250,
                                      child: Column(
                                        children: [
                                          Image.network(
                                            state.books[index].image,
                                            width: 125,
                                            height: 160,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22, right: 7),
                                            child: Text(
                                              state.books[index].name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Text(state.books[index].author,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w300,
                                                  color: appColor.basicColor))
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        );
                      } else if (state is LoadingBook) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is NoConnectionWithBook) {
                        return SizedBox(
                          width: 200,
                          height: 200,
                          child: RefreshIndicator(
                            onRefresh: ()async {
                              context.read<BooksBloc>().add(getBooks());
                            },
                            child: ListView(
                              children: [
                                Text('there is no internet'),
                              ],
                            ),
                          ),
                        );
                      } else if (state is successfetchsearch) {
                        return Expanded(
                          child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: state.result.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 5,
                                mainAxisExtent: 260,
                              ),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsBooks(Book: state.result[index])));
                                  },
                                  child: Container(
                                    width: 150,
                                    height: 250,
                                    child: Column(
                                      children: [
                                        Image.network(
                                          state.result[index].image,
                                          width: 125,
                                          height: 160,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22, right: 7),
                                          child: Text(
                                            state.result[index].name,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Text(state.result[index].author,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300,
                                                color: appColor.basicColor))
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      } else {
                        return Text('there is no internet');
                      }
                    },
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
