import 'package:flutter/cupertino.dart';
import 'package:selfiemobileapp/src/layout/layout.dart';
import 'package:selfiemobileapp/src/themes/colors.dart';
import 'package:selfiemobileapp/src/widgets/bold_text.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Layout(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BoldText(text: "Welcome back!"),
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
                Text("Last Scan: "),
                Text("8 hours ago")
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
                Text("Total Scans this month: "),
                Text("10")
              ],
            ),
          ),
        ],
      ),
    ),);
  }
}
