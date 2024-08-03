import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Smart Downloads",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14.72,fontWeight: FontWeight.normal),),
      ),
      

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text("Introducing Downloads For You",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 19.72,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Text(textAlign: TextAlign.justify,"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
            style: TextStyle(color: ColorConstants.mainWhite,fontSize: 10.78,fontWeight: FontWeight.normal),),
            SizedBox(height: 18,),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: ColorConstants.grey,
              ),
            ),
            SizedBox(height:25 ,),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(color:ColorConstants.mainBlue,borderRadius: BorderRadius.circular(2) ),
              child: Center(child: Text("SETUP",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14,fontWeight: FontWeight.normal),)),
            ),
            SizedBox(height: 60,),
            Center(
              child: Container(
                width: 280,
                height: 40,
                decoration: BoxDecoration(color: ColorConstants.grey,borderRadius: BorderRadius.circular(3)),
                       
                       child: Center(child: Text("Find Something to Download",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16.71,fontWeight: FontWeight.bold),)),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}