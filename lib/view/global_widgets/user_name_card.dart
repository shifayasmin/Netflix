import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({super.key, required this.imagePath, required this.userName, this.onCardPressed, this.height,  this.width});
  final String imagePath;
  final String userName;
  final  void Function()? onCardPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onCardPressed,
      child: Column(
        children: [
          Container(child: Column(
            children: [
              Image.asset(
                height: height,
                width: width,
                imagePath),
            ],
          ),),
          SizedBox(height: 4,),
          Text(userName,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 13.25),),
          
        ],
      ),
    );
  }
}