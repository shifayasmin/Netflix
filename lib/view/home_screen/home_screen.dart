import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/home_screen/widgets/movies_card_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviePosterSection(),
            SizedBox(height: 11,),
            _buildPlaySection(),
            SizedBox(height: 43,),
            MoviesCardBuilderWidget(
              titleText: "African Movies",
              isCircle: true,
              customWidth: 102,
              posterImages: DummyDb.moviePosterImages1,

            ),
              MoviesCardBuilderWidget(
                titleText:"Nollywood movies and TV",
                posterImages: DummyDb.moviePosterImages2,
              ),
                MoviesCardBuilderWidget(
                  titleText:"Netflix Originals" ,
                  posterImages: DummyDb.moviePosterImages3,
                ),
                MoviesCardBuilderWidget(
                  titleText:"Watch it again" ,
                  posterImages: DummyDb.moviePosterImages4,
                  customHeight: 251,
                  customWidth: 154,
                ),
          ],
        ),
      ),

    );
  }

  Widget _buildPlaySection() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(Icons.add,size: 24,color: ColorConstants.mainWhite,),
            SizedBox(height: 8,),
            Text("My List",style: TextStyle(fontSize: 13.64,color: ColorConstants.mainWhite),)
          ],
        ),
        SizedBox(width: 42,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 7),
          child: Row(
            children: [
              Icon(Icons.play_arrow,color: ColorConstants.mainBlack,size: 22,),
              SizedBox(width: 11,),
              Text("Play",style: TextStyle(color: ColorConstants.mainBlack,fontWeight: FontWeight.bold),)
            ],
          ),
          decoration: BoxDecoration(color: Color(0xffC4C4C4),borderRadius: BorderRadius.circular(5.63)),
        ),
        SizedBox(width: 42,),
        Column(
          children: [
            Icon(Icons.info,size: 24,color: ColorConstants.mainWhite,),
            SizedBox(height: 8,),
            Text("Info",style: TextStyle(fontSize: 13.64,color: ColorConstants.mainWhite),)
          ],
        ),
        
      ],
    );
     }

  Widget _buildMoviePosterSection() {
    return Stack(
          children: [Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            height: 415,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://i.pinimg.com/236x/6f/cb/04/6fcb0407bb3e4a26d130cd6185a4829d.jpg"),fit: BoxFit.cover),
            ),
           
          ),
          Container(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstants.N_logo_png),
                      Text("TV Shows",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 17.2),),
                      Text("Movies",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 17.2),),
                      Text("My List",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 17.2),),
                      
                      
                    ],
                  ),
                ),
                Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: ColorConstants.mainWhite)),
                          height: 18,
                          width: 20,
                          child: Column(
                            
                            children: [
                              Text("TOP",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 5,fontWeight: FontWeight.bold),),
                              Text("10",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 5,fontWeight: FontWeight.bold),),
                             
                            ],
                          ),
                         ),
                         SizedBox(width: 4,),
                          Text("#2 in Nigeria Today",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 13.72,fontWeight: FontWeight.bold),)
                        ],
                      )
              ],
            ),
            height: 415,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [ColorConstants.mainBlack,Colors.transparent])
            ),
          )
          ]
        );
  }
}