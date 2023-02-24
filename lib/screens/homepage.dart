import 'package:financeguru_app/widgets/bargraph.dart';
import 'package:financeguru_app/widgets/bottomnavigationbar.dart';
import 'package:financeguru_app/widgets/buttons.dart';
import 'package:financeguru_app/widgets/images.dart';
import 'package:financeguru_app/widgets/lists.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.purpleAccent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: HomePageBanner(
                      imageAddress: [
                        'assets/images/moneyTree.png',
                        'assets/images/makeMoney.png',
                        'assets/images/publicFinance.png',
                        'assets/images/financialAnalysis.png'
                      ],
                    ),
                  ),
                ),
                BarChart(),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonHomePage(
                    Icon: Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    navto: () {},
                  ),
                  ButtonHomePage(
                    Icon: Icon(
                      Icons.account_balance,
                      color: Colors.white,
                      size: 30,
                    ),
                    navto: () {},
                  ),
                  ButtonHomePage(
                    Icon: Icon(
                      Icons.group_add_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    navto: () {},
                  ),
                  ButtonHomePage(
                    Icon: Icon(
                      Icons.notifications_active_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    navto: () {},
                  ),
                ],
              ),
            ),
            Container(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(children: [
                        Container(
                            alignment: Alignment.topLeft,
                            padding:
                                EdgeInsets.only(left: 20, top: 10, bottom: 10),
                            child: Text(
                              'Latest Transactions',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width - 10,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: Lister(),
                          ),
                        ),
                      ]),
                    ))),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.122,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(15),
                  //     topRight: Radius.circular(15)),
                  color: Colors.white,
                ),
                child: ImageSlider(
                  imageAddress: [
                    'assets/images/moneyTree.png',
                    'assets/images/makeMoney.png',
                    'assets/images/publicFinance.png',
                    'assets/images/financialAnalysis.png'
                  ],
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height*0.122,
            // )
          ],
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
