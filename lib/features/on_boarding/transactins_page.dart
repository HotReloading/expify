import 'package:expify/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Welcomeback,',style: TextStyle(color: Appcolors.lightGrey)),
            SizedBox(height: 2,),
           Text('Alex Johnson',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)
     ], ),
       actions: [
        CircleAvatar(
          backgroundColor: Appcolors.secondaryColor,
          child: Text('AJ',style: TextStyle(color: Appcolors.lightScaffold),)
        )
       ],
        ),
        body: Column(
          children: [
            SizedBox(height: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Latest Transaction',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              
              ),
              Text('View All',style: TextStyle(fontSize: 16,color: Appcolors.primaryColor,fontWeight: FontWeight.bold),)
              ],
            ),
            
          ],
        ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Appcolors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70)
        ),
        onPressed: (){

        },
        child: Icon(Icons.add),
       ),
       bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Appcolors.secondaryColor,
        unselectedItemColor: Appcolors.darkGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Statistics"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),


    );
  }
}