import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';

class SearchScreen extends StatefulWidget {
  
  
  const SearchScreen({super.key, required this.movieList});
  final List<String>movieList;
  

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Search for a show, movie,genre,e.t.c. ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.grey.shade800,
                border: InputBorder.none,
                filled: true,
                prefixIcon:Icon(Icons.search,color: Colors.grey,),
                suffixIcon: Icon(Icons.mic,color: Colors.grey,) 
            
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Top Searches",style: TextStyle(color: ColorConstants.mainWhite,fontWeight: FontWeight.bold,fontSize: 26.75),),
            ),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) => ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                     color: ColorConstants.primaryRed,
                    image: DecorationImage(image: NetworkImage(DummyDb.movieListTile[index]),
                    fit: BoxFit.cover)
                  ),
                 
                  width: 146,
                  
                ),
                title: Text("Title",style: TextStyle(color: ColorConstants.mainWhite),),
                trailing: Icon(Icons.play_circle_outline_rounded),
              ), separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount: DummyDb.movieListTile.length),
            )
          ],
        ),
      ),
    );
  }
}