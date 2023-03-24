import 'package:flutter/material.dart';

class Prepare extends StatelessWidget {
  const Prepare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prepare before doner",
      home: PreparationPage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class PreparationPage extends StatefulWidget {
  const PreparationPage({super.key});

  @override
  State<PreparationPage> createState() => _PreparationPageState();
}

class _PreparationPageState extends State<PreparationPage> {
  int number = 0; //สร้าง state

//แสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Blood Donation Preparation"),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 55,
                  color: Colors.white,
                  child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    unselectedLabelColor: Colors.pink,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pinkAccent),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.pinkAccent, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Property"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.pinkAccent, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Before Donation"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.pinkAccent, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("After Donation"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "*"),
            BottomNavigationBarItem(
                icon: Icon(Icons.content_paste_outlined), label: "*")
          ],
        ));
  }

  /*List<Widget> getData(int count) {
    //กลุ่มข้อมูล
    List<Widget> data = [];
    for (var i = 1; i < 6; i++) {
      var menu = ListTile(
        title: Text("เมนูที่ $i"),
        subtitle: Text("หัวข้อย่อย $i"),
      );
      data.add(menu);
    }
    return data;
  }*/
}
