import 'package:expify/core/theme/colors.dart';
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

  DateTime selectedDate = DateTime(2023, 10, 27);

  Future<void> pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void saveExpense() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Appcolors.successColor,
          content: const Text("Expense Saved"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightScaffold,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Appcolors.white,
        centerTitle: true,
        leadingWidth: 80,

        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Appcolors.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        title: Text(
          "Add Expense",
          style: TextStyle(
            color: Appcolors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 24),

              Text(
                "AMOUNT",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  color: Appcolors.darkGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$",
                    style: TextStyle(
                      fontSize: 30,
                      color: Appcolors.darkGrey,
                    ),
                  ),

                  const SizedBox(width: 12),

                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      controller: amountController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        color: Appcolors.darkGrey,
                      ),
                      decoration: const InputDecoration(
                        hintText: "0.00",
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter amount";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Container(
                decoration: BoxDecoration(
                  color: Appcolors.white,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor:
                                Appcolors.warningColor.withOpacity(.15),
                            child: Icon(
                              Icons.monetization_on,
                              color: Appcolors.warningColor,
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Appcolors.darkGrey,
                                  ),
                                ),

                                const SizedBox(height: 2),

                                Text(
                                  "Food & Dining",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Appcolors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Appcolors.darkGrey,
                          ),
                        ],
                      ),
                    ),

                    Divider(height: 1, color: Appcolors.lightGrey),

                    GestureDetector(
                      onTap: pickDate,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor:
                                  Appcolors.secondaryColor.withOpacity(.15),
                              child: Icon(
                                Icons.calendar_today,
                                color: Appcolors.secondaryColor,
                                size: 20,
                              ),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Appcolors.darkGrey,
                                    ),
                                  ),

                                  const SizedBox(height: 2),

                                  Text(
                                    "${selectedDate.month}/${selectedDate.day}/${selectedDate.year}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Appcolors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(height: 1, color: Appcolors.lightGrey),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor:
                                Appcolors.darkGrey.withOpacity(.15),
                            child: Icon(
                              Icons.edit,
                              color: Appcolors.darkGrey,
                              size: 20,
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child: TextFormField(
                              controller: noteController,
                              decoration: InputDecoration(
                                labelText: "Note",
                                hintText: "Add an optional note...",
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                  color: Appcolors.darkGrey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: saveExpense,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      "Save Expense",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Appcolors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}