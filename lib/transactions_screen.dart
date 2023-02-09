import 'package:financeguru_app/screens_onboarding/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:financeguru_app/screens_onboarding/widgets/appbar_ui.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var transaction = [
      'Paneer',
      'Souvenier',
      'Sugar',
      'Flipkart',
      'Electricity',
      'Bus',
      'Wheat',
      'Fruits',
      'Taxi',
      "Jio",
      'Rice',
      'Jewellery',
      'Rent'
    ];
    var amount = [
      45,
      322,
      8754,
      78,
      4500,
      453,
      222,
      100,
      999,
      898,
      63,
      199499,
      4000
    ];
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: TextAppBar('TRANSACTIONS'),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 30))),
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          reverse: false,
          itemBuilder: (context, index) {
            return ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {},
                child: Card(
                  child: Center(
                      child: ListTile(
                    title: Text(
                      transaction[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 2),
                    ),
                    subtitle: Text(
                      'Amount: ${amount[index]} rs ',
                      style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    ),
                    leading: Text(
                      '${index + 1}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )),
                  elevation: 5,
                  color: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ));
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 3,
              thickness: 5,
            );
          },
          itemCount: transaction.length),
    ));
  }
}
