import 'package:flutter/material.dart';

class AddExpenses extends StatefulWidget {
  const AddExpenses({Key? key}) : super(key: key);

  @override
  State<AddExpenses> createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  DateTime selectedDate = DateTime(2023,10,27);

  Future<void> pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2030),
    );

    if(picked != null){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void saveExpense(){
    if(_formKey.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Expense Saved"))
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,

        leadingWidth: 80,

        leading: TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text(
            "Cancel",
            style: TextStyle(
              color: Color(0xff1976D2),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        title: const Text(
          "Add Expense",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16),
          child: Column(
            children: [

              const SizedBox(height: 24),

              const Text(
                "AMOUNT",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "\$",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(width: 12),

                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      controller: amountController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6C727F),
                      ),
                      decoration: const InputDecoration(
                        hintText: "0.00",
                        border: InputBorder.none,
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter amount";
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),

              const SizedBox(height: 24),

            
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Column(
                  children: [

                
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal:16,
                        vertical:14,
                      ),
                      child: Row(
                        children: [

                          CircleAvatar(
                            radius:18,
                            backgroundColor: Colors.orange.withOpacity(.15),
                            child: const Icon(
                              Icons.monetization_on,
                              color: Colors.orange,
                            ),
                          ),

                          const SizedBox(width:12),

                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize:14,
                                    color: Colors.grey,
                                  ),
                                ),

                                SizedBox(height:2),

                                Text(
                                  "Food & Dining",
                                  style: TextStyle(
                                    fontSize:16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),

                    const Divider(height:1),

                
                    GestureDetector(
                      onTap: pickDate,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal:16,
                          vertical:14,
                        ),
                        child: Row(
                          children: [

                            CircleAvatar(
                              radius:18,
                              backgroundColor: Colors.blue.withOpacity(.15),
                              child: const Icon(
                                Icons.calendar_today,
                                color: Colors.blue,
                                size:20,
                              ),
                            ),

                            const SizedBox(width:12),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  const Text(
                                    "Date",
                                    style: TextStyle(
                                      fontSize:14,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  const SizedBox(height:2),

                                  Text(
                                    "${selectedDate.month}/${selectedDate.day}/${selectedDate.year}",
                                    style: const TextStyle(
                                      fontSize:16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Divider(height:1),

                
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal:16,
                        vertical:12,
                      ),
                      child: Row(
                        children: [

                          CircleAvatar(
                            radius:18,
                            backgroundColor: Colors.grey.withOpacity(.15),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size:20,
                            ),
                          ),

                          const SizedBox(width:12),

                          Expanded(
                            child: TextFormField(
                              controller: noteController,
                              decoration: const InputDecoration(
                                labelText: "Note",
                                hintText: "Add an optional note...",
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: double.infinity,
                  height:55,
                  child: ElevatedButton(
                    onPressed: saveExpense,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff1976D2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Save Expense",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}