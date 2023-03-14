

import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "머리아프다",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: CircleAvatar( //액자
                    backgroundImage: AssetImage("assets/profile.png"),
                    backgroundColor: Colors.white,
                  ),

                 ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "김희온 님",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "국민내일배움카드",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Color.fromRGBO(232, 236, 247, 1),
                ),
              ),
              child:
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "나의 카드",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "카드발급신청",
                            style: TextStyle(
                                color: Color.fromRGBO(51, 122, 123, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset("assets/1.png"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "나의 상담",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                              children: [
                                Text(
                                  "상담 내역 ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(88, 89, 94, 1),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "0건",
                                  style: TextStyle(
                                      color: Color.fromRGBO(51, 122, 123, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                          ]),
                        ],
                      ),
                      const Spacer(),
                      Image.asset("assets/2.png"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "나의 훈련",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                              children: [

                                Text(
                                  "훈련수료 ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(88, 89, 94, 1),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "1건",
                                  style: TextStyle(
                                      color: Color.fromRGBO(51, 122, 123, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      const Spacer(),
                      Image.asset("assets/3.png"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "나의 관심(훈련) ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                              children: [
                                Text(
                                  "관심훈련 ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(88, 89, 94, 1),
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "0건",
                                  style: TextStyle(
                                      color: Color.fromRGBO(51, 122, 123, 1),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ]),
                        ],
                      ),
                      const Spacer(),
                      Image.asset("assets/4.png"),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "홈",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "과정검색",
              icon: Icon(Icons.pageview),
            ),
            BottomNavigationBarItem(
              label: "나의정보",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "도움말",
              icon: Icon(Icons.notifications),
            )
          ],
          showUnselectedLabels: true,
          unselectedItemColor: Color.fromRGBO(88, 89, 94, 1),
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}



AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Icon(
        Icons.arrow_back_ios,
        color: Color.fromRGBO(88, 89, 94, 1),
      ),
    ),
    title: const Text(
      "나의 정보",
      style: TextStyle(
          color: Color.fromRGBO(88, 89, 94, 1),
          fontSize: 20,
          fontWeight: FontWeight.w700
      ),
    ),
    centerTitle: true,
    actions: [
      Icon(
        Icons.search,
        color: Color.fromRGBO(88, 89, 94, 1),
        size: 35,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5.0),
      ),
      Row(
        children: [
          Icon(
            Icons.menu,
            color: Color.fromRGBO(88, 89, 94, 1),
            size: 35,
          ),
          Text(
            "메뉴",
            style: TextStyle(
              color: Color.fromRGBO(88, 89, 94, 1),
              fontSize: 14,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
      ),
    ],
  );
}