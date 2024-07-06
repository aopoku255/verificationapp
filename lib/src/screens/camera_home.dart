import 'package:flutter/cupertino.dart';
import 'package:selfiemobileapp/src/layout/layout.dart';
import 'package:selfiemobileapp/src/themes/colors.dart';
import 'package:selfiemobileapp/src/widgets/bold_text.dart';
import 'package:selfiemobileapp/src/widgets/button.dart';
import 'package:selfiemobileapp/src/widgets/inputfield.dart';

class CameraHome extends StatefulWidget {
  const CameraHome({super.key});

  @override
  State<CameraHome> createState() => _CameraHomeState();
}

class _CameraHomeState extends State<CameraHome> {
  @override
  Widget build(BuildContext context) {
    return  Layout(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BoldText(text: "Enter Ghana Card Information"),
          SizedBox(height: 20,),
          TextFieldInput(label: "Ghana Card", hintText: "GHA-000000000-0",),
          SizedBox(height: 20,),
          SizedBox(width: MediaQuery.of(context).size.width, child: Button(text: "Submit", vertical: 24, color: AppColors.primaryPink, onTap: (){
            Navigator.pushNamed(context, "/user-info");
          },))
        ],
      ),
    ),);
  }
}
