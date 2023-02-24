import 'package:flutter/material.dart';

class Lister extends StatefulWidget {
  const Lister({super.key});

  @override
  State<Lister> createState() => _ListerState();
}

class _ListerState extends State<Lister> {
  @override
  Widget build(BuildContext context) {
    var transaction = ['Paneer', 'Souvenier', 'Sugar', 'Flipkart', 'Rent'];
    var amount = ['450', '322', '754', '78', '4500', '5000'];
    return ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: ClipPath(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Colors.red,
                            width: 5,
                            strokeAlign: BorderSide.strokeAlignInside))),
                height: 65,
                child: Center(
                    child: ListTile(
                  title: Container(
                    child: Text(
                      transaction[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 0.5),
                    ),
                  ),
                  subtitle: Text(
                    'Today, 04:40 pm ',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  leading: Container(
                    height: 50,
                    width: 20,
                    alignment: Alignment.center,
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  minLeadingWidth: 20,
                  trailing: Container(
                    width: 80,
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Rs. " + amount[index],
                            style: (TextStyle(
                                color: Colors.greenAccent[700],
                                fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                                child: Icon(
                              Icons.account_balance_outlined,
                              size: 15,
                              color: Colors.black,
                            )),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '0795',
                              style: (TextStyle(color: Colors.black54)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ),
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            color: Colors.white,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(30)),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 3,
            thickness: 5,
            color: Colors.white,
          );
        },
        itemCount: transaction.length);
  }
}
