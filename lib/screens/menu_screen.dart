import 'package:financeguru_app/widgets/appbar_ui.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: TextAppBar('MENU'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 140)),
              )),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16,
                color: Colors.deepPurpleAccent,
                child: Card(
                  child: Center(
                    child: Text(
                      'Your Monthly Expense is: 12,999',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16,
                color: Colors.deepPurpleAccent,
                child: Card(
                  child: Center(
                    child: Text(
                      'Your Daily Expense is: 899',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.amberAccent[800]),
                    ),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Image.asset(
                                'assets/images/bank_icons.png',
                                fit: BoxFit.contain,
                              ),
                              color: Colors.deepPurple[100],
                              elevation: 30,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Image.asset(
                                'assets/images/st.png',
                                fit: BoxFit.contain,
                              ),
                              color: Colors.deepPurple[100],
                              elevation: 30,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Image.asset(
                                'assets/images/bell_icons.png',
                                fit: BoxFit.contain,
                              ),
                              color: Colors.deepPurple[100],
                              elevation: 30,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Image.asset(
                                'assets/images/YProfile.png',
                                fit: BoxFit.contain,
                              ),
                              color: Colors.deepPurple[100],
                              elevation: 30,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Image.asset(
                                'assets/images/t_.png',
                                fit: BoxFit.contain,
                              ),
                              color: Colors.deepPurple[100],
                              elevation: 30,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 6,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Image.asset(
                                'assets/images/help_icons.png',
                                fit: BoxFit.fill,
                              ),
                              color: Colors.deepPurple[100],
                              elevation: 30,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
