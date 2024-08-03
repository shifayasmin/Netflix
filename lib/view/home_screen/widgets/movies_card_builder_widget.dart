import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class MoviesCardBuilderWidget extends StatelessWidget {
  const MoviesCardBuilderWidget({super.key,  this.isCircle=false,  this.customHeight=161,  this.customWidth=103,required this.titleText, required this.posterImages, });
  final bool isCircle;
  final double customHeight;
  final double customWidth;
  final String titleText;
  final List<String>posterImages;
   

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(titleText,style: TextStyle(color: ColorConstants.mainWhite,fontSize: 20.92,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 22),
        SizedBox(
          height: isCircle?customWidth:customHeight,
          child: ListView.separated(itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              shape: isCircle ? BoxShape.circle:BoxShape.rectangle,
               color: Colors.orange,
               image: DecorationImage(image: NetworkImage(posterImages[index]),fit: BoxFit.cover)
            ),
            height: customHeight,
            width: customWidth,
           
          ), separatorBuilder: (context, index) => SizedBox(width: 7,), itemCount: posterImages.length,
          scrollDirection: Axis.horizontal,)),
          SizedBox(height: 22,),
      ],

    );
  }
}