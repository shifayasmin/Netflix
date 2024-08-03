import 'package:flutter/material.dart';
// import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.imageUrl, required this.titles});
  final String imageUrl;
  final String titles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Image.network(imageUrl,height: 195,width: double.infinity,fit: BoxFit.fill,),
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 12),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(Icons.notifications_sharp,color: ColorConstants.mainWhite,size: 24,),
                    SizedBox(height: 7,),
                    Text("Remind Me",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.83), ),)
                  ],
                ),
                SizedBox(width: 45,),
                Column(
                  children: [
                    Icon(Icons.share,color: ColorConstants.mainWhite,size: 24,),
                    SizedBox(height: 7,),
                    Text("Share",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.83), ),),
                  
                  ],
                )
              ],
            ),
              Text("Season 1 coming December 14",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.83),fontSize: 11 )),
              Text(titles,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 18 ,fontWeight: FontWeight.bold)),
               SizedBox(height: 12,),
              
              Text(textAlign: TextAlign.justify,"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",style: TextStyle(color: ColorConstants.mainWhite.withOpacity(0.83),fontSize: 11 )),
              SizedBox(height: 12,),
              Text("Steamy • Soapy • Slow • Burn • Suspenseful • Teen • Mystery",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 11 ,fontWeight: FontWeight.w500)),
          ],
        ),),

      ],
    );
  }
}