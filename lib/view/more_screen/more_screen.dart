import 'package:flutter/material.dart';
import 'package:netflix/dummy_db.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/utils/constants/image_constants.dart';
import 'package:netflix/view/global_widgets/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int seletedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _builduserSelectionSection(),
            SizedBox(height: 9,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit,
                color: ColorConstants.mainWhite,
                ),
                SizedBox(width: 6,
                ),
                Text("Manage Profiles",
                style: TextStyle(
                   color: ColorConstants.mainWhite,
                ),
                ),
              ],
            ),
          SizedBox(height: 5,),
          _buildRefferelSelection(),
          SizedBox(height: 10,),

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check,
                color: ColorConstants.mainWhite,
                size: 30,
                ),
                SizedBox(width: 6,
                ),
                Text("My List",
                style: TextStyle(
                   color: ColorConstants.mainWhite,
                   fontWeight: FontWeight.bold,
                ),
                ),
              ],
          ),
          Divider(color: ColorConstants.grey.withOpacity(.3),),
          
           Text("App Settings",
                style: TextStyle(
                   color: ColorConstants.mainWhite,
                   fontWeight: FontWeight.bold,),),
        
         Text("Account",
                style: TextStyle(
                   color: ColorConstants.mainWhite,
                   fontWeight: FontWeight.bold,),),

                    Text("Help",
                style: TextStyle(
                   color: ColorConstants.mainWhite,
                   fontWeight: FontWeight.bold,),),
                    Text("Sign Out",
                style: TextStyle(
                   color: ColorConstants.mainWhite,
                   fontWeight: FontWeight.bold,),),
          ]
              ),
      ),
            
          
        
      
    );
  }

  Container _buildRefferelSelection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18,),
          color: ColorConstants.grey.withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.sms,
                  color: ColorConstants.mainWhite,
                  ),
                
              
              SizedBox(width: 6,
              ),
              Text("Tell friends about Netflix",
              style: TextStyle(
                 color: ColorConstants.mainWhite,
                 fontSize: 20,
                 fontWeight: FontWeight.bold
              ),
              ),
                ],
              ),
              SizedBox(height: 5,),

                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                  textAlign: TextAlign.justify,
              style: TextStyle(
                 color: ColorConstants.mainWhite,
                 fontSize: 10,
                 fontWeight: FontWeight.w500),),
             SizedBox(height: 11,),

            
                  Text("Terms & Conditions,",
                  textAlign: TextAlign.justify,
              style: TextStyle(
                height: 2,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: ColorConstants.mainWhite,
                 color: ColorConstants.mainWhite,
                 fontSize: 10,
                 fontWeight: FontWeight.w500),),
                 SizedBox(height: 11,),
                 Row(
                  children: [
                    Expanded(child: 
                    TextField(
                      decoration: InputDecoration(
                        fillColor: ColorConstants.mainBlack,
                        filled: true,
                        border: InputBorder.none,
                      ),
                    )),
                    SizedBox(width: 7,),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      color: ColorConstants.mainWhite,
                      child: Text("Copy Link",
                       style: TextStyle(
                                      
                                       fontSize: 17,
                                       fontWeight: FontWeight.bold),),
                      ),
                    
                  ],
                 ),
                 SizedBox(height: 21,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      size: 35,
                      Icons.wallet_travel,
                    color: ColorConstants.mainWhite,),
                    SizedBox(
                      height: 41,
                      child: VerticalDivider(
                        color: ColorConstants.mainWhite,
                      ),
                    ),

                     Icon(
                      size: 35,
                      Icons.facebook,
                    color: Colors.blue,),
                    SizedBox(
                      height: 41,
                      child: VerticalDivider(
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    
                  
                 Icon(
                      size: 35,
                      Icons.watch_later,
                    color: ColorConstants.mainWhite,),
                    SizedBox(
                      height: 41,
                      child: VerticalDivider(
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                    
                  Column(
                    children: [
                      Icon(
                          size: 35,
                          Icons.more_horiz,
                        color: ColorConstants.mainWhite,),

                        Text("More",
                       style: TextStyle(
                                     color: ColorConstants.mainWhite, 
                                       fontSize: 17,
                                       fontWeight: FontWeight.bold),),
                      
                    ],
                  ),
                    
                      
                    
                  
            

                  ],
                 )
            ],
          ),
        );
  }

  Widget _builduserSelectionSection() {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: 
                  List.generate(DummyDb.userList.length, (index) => UserNameCard(
                    onCardPressed: () {
                      // print(index);
                      seletedIndex=index;
                      // print(seletedIndex);
                      setState(() {
                        
                      });
                    },
                    height: index == seletedIndex ? 70 : 60,
                    width: index == seletedIndex ? 75 : 65,
                    imagePath: DummyDb.userList[index]["imagePath"].toString(),
                  userName: DummyDb.userList[index]["name"].toString(),),)
                
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                height: 60,
                width: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorConstants.mainWhite),
            
                ),
                child: Center(
                  child: Icon(Icons.add,
                  color: ColorConstants.mainWhite,
                  size: 30,),
                ),
              )
            ],

          ),
        );
  }
}