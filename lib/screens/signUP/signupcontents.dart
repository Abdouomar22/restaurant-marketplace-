import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_marketplace_h/constants.dart';
import 'package:restaurant_marketplace_h/widgets/default_button.dart';

class Sign_up_content extends StatefulWidget {
  const Sign_up_content({Key? key}) : super(key: key);

  @override
  State<Sign_up_content> createState() => _Sign_up_contentState();
}

class _Sign_up_contentState extends State<Sign_up_content> {
  bool isvisible = true;
  bool istaped = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Sign up',
                style: TextStyle(
                    color: Ktextcolor,
                    fontSize: 40,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 70,
              ),
              TextFormField(
                cursorColor: KPrimarycolor,
                decoration: InputDecoration(
                  contentPadding:
                     const  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  suffixIconColor: Klighttextcolor,
                  suffixIcon: const Icon(
                    Icons.person,
                  ),
                  hintStyle: const TextStyle(
                    color: Kverylighttextcolor,
                  ),
                  labelText: 'First name ',
                  labelStyle: const TextStyle(
                    color: Klighttextcolor,
                  ),
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(color: Ktextcolor )),
                  focusColor: KPrimarycolor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(
                        color: KPrimarycolor,
                        width: 2,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                cursorColor: KPrimarycolor,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  suffixIconColor: Klighttextcolor,
                  suffixIcon: const Icon(
                    Icons.person,
                  ),
                  hintStyle: const TextStyle(
                    color: Kverylighttextcolor,
                  ),
                  labelText: 'Last name',
                  labelStyle: const TextStyle(
                    color: Klighttextcolor,
                  ),
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(color: Ktextcolor )),
                  focusColor: KPrimarycolor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(
                        color: KPrimarycolor,
                        width: 2,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                cursorColor: KPrimarycolor,
                onTap: () {},
                decoration: InputDecoration(
                  suffixIconColor: Klighttextcolor,
                  contentPadding:
                     const  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  suffixIcon: const Icon(
                    Icons.email,
                  ),
                  hintStyle: const TextStyle(
                    color: Kverylighttextcolor,
                  ),
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                    color: Klighttextcolor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(color: Ktextcolor)),
                  focusColor: KPrimarycolor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(
                        color: KPrimarycolor,
                        width: 2,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                cursorColor: KPrimarycolor,
                onTap: () {},
                obscureText: !isvisible,
                decoration: InputDecoration(
                  suffixIconColor: Klighttextcolor,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isvisible ? Icons.visibility : Icons.visibility_off,
                      size: 24,
                    ),
                    onPressed: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },
                  ),
                  hintStyle: const TextStyle(
                    color: Kverylighttextcolor,
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    color: Klighttextcolor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(color: Ktextcolor)),
                  focusColor: KPrimarycolor,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 14,
                      borderSide: const BorderSide(
                        color: KPrimarycolor,
                        width: 2,
                      )),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const default_button(text: 'Sign up', x: 10, y: 135, button_color: KPrimarycolor) ,
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 6
                ),
                child: Row(
                  children: [
                    Text('already have an account ? ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Ktextcolor,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        )),
                    GestureDetector(
                      child:Text(' Sign in',
                          style: TextStyle(
                            fontSize: 15,
                            color: KPrimarycolor,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              )

            ],
          ),
        ),
      ),
    );
  }
}