import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key, required this.imageUrl, required this.title, required this.dates
  });
  final String imageUrl;
final String title;
final String dates;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
      color: ColorConstants.grey,
      child: Row(
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
              height: 113,
              width: 55,
              fit: BoxFit.cover,
             imageUrl,),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Arrival",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 14),),
              Text(title,style: TextStyle(color: Colors.white.withOpacity(.83),fontSize: 14)),
              Text(dates,style: TextStyle(color: Colors.white.withOpacity(.47),fontSize: 11))
            ],
          )
        ],
      ),
    );
  }
}