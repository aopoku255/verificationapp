import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfiemobileapp/src/layout/layout.dart';
import 'package:selfiemobileapp/src/themes/colors.dart';
import 'package:selfiemobileapp/src/widgets/button.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Layout(body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/team.jpg"),
              radius: 80,
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Full Name: "),
                  Text("Andrews Opoku")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Date of Birth: "),
                  Text("1789-09-05")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Personal ID No.: "),
                  Text("GHA-23450495-4")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Document No.: "),
                  Text("AR23450495")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Birth Town.: "),
                  Text("Kumasi")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Date of Issuance.: "),
                  Text("2023-04-09")
                ],
              ),
            ),SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Date of Expiry.: "),
                  Text("2023-04-09")
                ],
              ),
            ),SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
        
                  color: AppColors.primaryLigtGray
              ),
              child: Row(
                children: [
                  Text("Gender.: "),
                  Text("Male")
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 30, bottom: 60), width: MediaQuery.of(context).size.width, child: Button(text: "Start Over", vertical: 24, color: AppColors.primaryPink, onTap: (){
              Navigator.pushNamed(context, "/dashboard");
            },))
          ],
        ),
      ),
    ));
  }
}
