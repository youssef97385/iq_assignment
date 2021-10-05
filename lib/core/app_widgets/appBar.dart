

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_bloc.dart';
import 'package:iq_sample_app/app/theme_bloc/theme_event.dart';


Widget baseAppBar(Size size , BuildContext context , String title ){
  return
    Container(
      height: size.height*0.1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top:16.0,left: 24 , right: 24 , bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SvgPicture.asset("assets/images/search.svg"),
            Row(
              children: [
                InkWell(
                    onTap: (){
                      print("changing theme");
                      BlocProvider.of<ThemeBloc>(context).add(ChangeTheme((b)=>b..isOn=true));
                    },
                    child: Image.asset("assets/images/logo.png",height: 60,width: 60,)),
                SizedBox(width: 8,),
                Text(title,
                  style: TextStyle(
                      color: Color(0xff6e6e6e),
                      fontSize: 25,
                      fontFamily: "brush"
                  ),)
              ],
            ),

          ],
        ),
      ),
    );
}
