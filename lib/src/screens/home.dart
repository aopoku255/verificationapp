import 'package:flutter/cupertino.dart';
import 'package:selfiemobileapp/src/layout/layout.dart';
import 'package:selfiemobileapp/src/themes/colors.dart';
import 'package:selfiemobileapp/src/widgets/bold_text.dart';
import 'package:selfiemobileapp/src/widgets/button.dart';
import 'package:selfiemobileapp/src/widgets/inputfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Layout(body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.jpg", height: 80),
            SizedBox(height: 20,),
            BoldText(text: "Login with your credentials"),
            SizedBox(height: 30,),
            const TextFieldInput(
              label: 'Username',
              hintText: "Please enter email",

            ),
            const SizedBox(height: 30,),
            const TextFieldInput(
              label: 'password',
              hintText: "Please enter password",
            ),
            const SizedBox(height: 30,),
            SizedBox(width: MediaQuery.of(context).size.width, child: Button(text: "Submit", vertical: 24, color: AppColors.primaryPink, onTap: (){
              Navigator.pushNamed(context, "/dashboard");
            },))
          ],
        ),
      ),
    ),);
  }
}
