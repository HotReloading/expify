import 'package:expify/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int index = 0;

Widget transactionTile({
  required IconData icon,
  required Color iconColor,
  required Color bgColor,
  required String title,
  required String subtitle,
  required String amount,
  required Color amountColor,
}) {
  return Card(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: ListTile(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      leading: Container(
        height: 40, 
        width: 40,  
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8), // Optional: if you want rounded corners
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey)),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amountColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fa),

      appBar: AppBar(
        toolbarHeight: 220,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome back,",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Alex Johnson",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: Text("AJ", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),

              const SizedBox(height: 25),

             
              const Center(
                child: Column(
                  children: [
                    Text(
                      "TOTAL BALANCE",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "\$4,250.50",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(height: 15),

           
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.lightGreen[100],
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(width: 7),
                            Text("INCOME", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                         SizedBox(height: 4),
                        Align(
                          alignment: AlignmentGeometry.bottomLeft,
                          child:
                           Text(
                            "\$6,400",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children:  [
                            CircleAvatar(
                              backgroundColor:Colors.red[200] ,
                              child: Icon(Icons.arrow_upward, color: Colors.red
                              )),
                            SizedBox(width: 10),

                            Text("EXPENSES",style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 4),
                        Align(
                          alignment: AlignmentGeometry.bottomLeft,
                          child: Text(
                            "\$2,150",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Latest Transactions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    transactionTile(
                      icon: Icons.remove_shopping_cart_outlined,
                      iconColor: Colors.deepOrange,
                      bgColor: Colors.orange.shade100,
                      title: "Whole Foods",
                      subtitle: "Grocery • Today, 10:45 AM",
                      amount: "-\$84.20",
                      amountColor: Colors.red,
                    ),
                    SizedBox(height: 10,),
                    transactionTile(
                      icon: Icons.directions_car,
                      iconColor: Colors.blue,
                      bgColor: Colors.blue.shade100,
                      title: "Uber Ride",
                      subtitle: "Transport • Oct 24, 8:20 PM",
                      amount: "-\$12.50",
                      amountColor: Colors.red,
                    ),
                    SizedBox(height: 10,),
                    transactionTile(
                      icon: Icons.lock,
                      iconColor: Colors.purple,
                      bgColor: Colors.purple.shade100,
                      title: "Apple Store",
                      subtitle: "Shopping • Oct 23, 2:15 PM",
                      amount: "-\$199.00",
                      amountColor: Colors.red,
                    ),
                    SizedBox(height: 10,),
                    transactionTile(
                      icon: Icons.attach_money,
                      iconColor: Colors.green,
                      bgColor: Colors.green.shade100,
                      title: "Monthly Salary",
                      subtitle: "Income • Oct 23, 9:00 AM",
                      amount: "+\$3,200",
                      amountColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

     
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
