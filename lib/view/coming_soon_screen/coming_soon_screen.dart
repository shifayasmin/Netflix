import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/dummy_db.dart';

import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/view/coming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
     appBar:AppBar(
      titleSpacing: 0 ,
      backgroundColor: Colors.transparent,
      leading: Center(
        child: CircleAvatar(
          backgroundColor: ColorConstants.primaryRed,
          radius: 15,
          child: Icon(Icons.notifications_sharp,size: 20,color: ColorConstants.mainWhite,),
        ),
      ),
      title: Text("Notifications",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 16,fontWeight: FontWeight.bold),),
     ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Column(
            children: List.generate(DummyDb.newArrivals.length, (index) => NewArrivalCard(imageUrl: DummyDb.newArrivals[index], title: DummyDb.titleList[index], dates: DummyDb.datesList[index],)),
           ),
           SizedBox(height: 25,),
           Column(
            children: List.generate(DummyDb.moviePosterImages3.length, (index) => CustomVideoCard(imageUrl: DummyDb.moviePosterImages3[index], titles: DummyDb.titlesList[index],))
           )
         ],
       ),
     ),
    );
  }
}