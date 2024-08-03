import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/home_screen/home_screen.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor:ColorConstants.mainBlack ,
        centerTitle: true,
        
        title: Image.asset(height: 37.2,ImageConstants.LOGO_PNG),
        actions: [Icon(Icons.edit,color: ColorConstants.mainWhite,)],
        ),

        


body: GridView.builder(
  
  padding: EdgeInsets.symmetric(horizontal: 75,vertical: 170),
 shrinkWrap: true,
  itemCount: DummyDb.userList.length+1,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 130 ,crossAxisSpacing:10 ,), itemBuilder: (context, index) {
    if(index<DummyDb.userList.length){
      return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    },
    child: Column(
      children: [
        Container(child: Column(
          children: [
            Image.asset(DummyDb.userList[index]["imagePath"].toString()),
          ],
        ),),
        SizedBox(height: 4,),
        Text(DummyDb.userList[index]["name"].toString(),style: TextStyle(color: Colors.white,fontSize: 13.25),),
        
      ],
    ),
  );

    }else{
      return InkWell(
        onTap: (){
          DummyDb.userList.add({
            "imagePath":ImageConstants.RECTANGLE2,"name":"Emenallo"
            
          });
          setState(() {
            
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Text("Profile added successfully")));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child:Column(
                children: [Image.asset(ImageConstants.ADD_LOGO,),
                SizedBox(height: 20,),
                Text("Add Profile",style: TextStyle(color: ColorConstants.mainWhite,fontSize: 13.25),)
                
                ],
                
              ),
            )
          ],

        ),
      );
    }
    
  
},

)

,
    );
  }
}