import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novels_app/Core/Data/sginUp_model.dart';
import 'package:novels_app/Core/Resourse/color_app.dart';
import 'package:novels_app/Core/Resourse/image_app.dart';
import 'package:novels_app/Core/resourse/string_app.dart';
import 'package:novels_app/feature/Auth/Home/view/home_page.dart';
import 'package:novels_app/feature/Auth/register/bloc/register_bloc.dart';

class SginUp extends StatelessWidget {
  const SginUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController gender = TextEditingController();
    TextEditingController birthdate = TextEditingController();
    TextEditingController location = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController last_name = TextEditingController();
    TextEditingController first_name = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController username = TextEditingController();
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Image.asset(
              appImage.vectorSginUpImage,
            ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            appImage.bookImage,
                            width: 110,
                            height: 115,
                          ),
                          Text(
                            appString.SGINUP,
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 400,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: first_name,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.FIRSTNAME,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: last_name,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.LASTNAME,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: username,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.USERNAME,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: birthdate,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.BIRTHDATE,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: gender,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.GENDER,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: phone,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.PHONE,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: location,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.LOCATION,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14),
                            child: Container(
                              width: 275,
                              height: 47,
                              child: TextField(
                                controller: password,
                                onChanged: (value) {
                                  // context.read<SearchBloc>().add(Search(word: searchModel(name: value)));
                                },
                                // controller: search,
                                decoration: InputDecoration(
                                  fillColor: appColor.primary,
                                  label: Row(
                                    children: [
                                      Text(
                                        appString.PASSWORD,
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
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: appColor.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 34),
                      child: Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: appColor.taipSearchColo,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Text(
                            appString.IAgreeToThe,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(125, 79, 79, 100)),
                          ),
                          Text(
                            appString.TermsConditions,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(160, 31, 31, 117)),
                          ),
                        ],
                      ),
                    ),
                    BlocListener<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        if (state is successcreatedUser) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                            content: Text('Done'),
                            backgroundColor: appColor.basicColor,
                          ));
                        }
                      },
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                          child: Container(
                            width: 260,
                            height: 50,
                            child: Center(
                                child: Text(appString.SGINUP,
                                    style: TextStyle(
                                        color: appColor.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400))),
                            decoration: BoxDecoration(
                              color: appColor.basicColor,
                              borderRadius: BorderRadius.all(Radius.circular(11)),
                            ),
                          ),
                        ),
                        onTap: () {
                          if (password != null &&
                              username != null &&
                              first_name != null &&
                              last_name != null &&
                              birthdate != null &&
                              location != null &&
                              gender != null &&
                              phone != null) {
                            SginUpModel user = SginUpModel(
                                username: username.text,
                                password: password.text,
                                first_name: first_name.text,
                                last_name: last_name.text,
                                phone: phone.text,
                                location: location.text,
                                birthdate: birthdate.text,
                                gender: gender.text);
                            context
                                .read<RegisterBloc>()
                                .add(CreateUser(User: user));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
