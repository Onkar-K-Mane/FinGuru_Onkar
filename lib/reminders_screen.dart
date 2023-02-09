import 'package:financeguru_app/screens_onboarding/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'screens_onboarding/widgets/appbar_ui.dart';

class ReminderScreenApp extends StatelessWidget {
  const ReminderScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryname = [
      'PAY TAX',
      'ELECTRICITY BILL',
      'BOOK GAS CYLINDER',
      'RECHARGE DTH',
      'RECHARGE MOBILE',
      'CANCEL SUBSCRIPTIONS',
      'BOOK TICKET',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: TextAppBar('REMINDERS'),
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 30))),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.2,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Colors.deepPurpleAccent,
                        radius: 30,
                      ),
                    ))),
            Flexible(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          child: Card(
                            child: Center(child: TextList(categoryname[index])),
                            elevation: 0,
                            color: Colors.deepPurpleAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 3,
                      thickness: 5,
                    );
                  },
                  itemCount: categoryname.length),
            ),
          ],
        ),
      ),
    );
  }
}
