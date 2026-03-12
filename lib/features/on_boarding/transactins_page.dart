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
         bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          items:[
             BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              ),
          ],
         ),
    );
  }
}