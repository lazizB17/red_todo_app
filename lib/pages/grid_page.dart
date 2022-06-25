import 'package:flutter/material.dart';
import '../services/theme_service.dart';
import 'home_page.dart';

class GridPage extends StatefulWidget {
  static const id = "/grid_page";

  const GridPage({Key? key}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void bottomSheet(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5 +
              MediaQuery.of(context).viewInsets.bottom,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Container(
                      width: 143,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[600]!,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Todo Title",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height / 56.25),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height / 105),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Todo title.....",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Task",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height / 56.25),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height / 105),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write anything in your mind ",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 14,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ThemeService.colorBackgroundSplashPage,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 85),
                    ),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // #appBar
      appBar: AppBar(
        backgroundColor: ThemeService.colorBackgroundLight,
        elevation: 0,
        centerTitle: true,
        // #My Tasks
        title: const Text(
          'My Tasks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          ),
        ),
        // #menu icon
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, HomePage.id);
          },
          icon: const Icon(
            Icons.menu,
            color: ThemeService.colorBackgroundSplashPage,
          ),
        ),
        actions: [
          // #search icon
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: ThemeService.colorBackgroundSplashPage,
            ),
          ),
        ],
        // #Whats on your mind?
        bottom: PreferredSize(
          child: Container(
            padding: const EdgeInsets.only(right: 190),
            child: const Text(
              "Whats on your mind?",
              style: TextStyle(
                color: ThemeService.colorBackgroundSplashPage,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(40),
        ),
      ),

      // #body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Container(
                  child: Column(
                    children: [
                      // #Pay Emma
                      const Padding(
                        padding: EdgeInsets.only(top: 21, right: 41),
                        child: Text(
                          "Pay Emma",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      // #20 dollars for manga
                      const Padding(
                        padding: EdgeInsets.only(top: 22, right: 26),
                        child: Text(
                          "20 dollars for\nmanga",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 40),
                      // #check & delete icons
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Image.asset(
                              "assets/icons/check.png",
                              width: 18,
                              height: 21,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/icons/trash.png",
                            width: 18,
                            height: 21,
                          )
                        ],
                      )
                    ],
                  ),
                  height: 174,
                  width: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ThemeService.colorBackgroundSplashPage),
                ),
                Container(
                  height: 174,
                  width: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ThemeService.colorBackgroundSplashPage),
                ),
                Container(
                  height: 174,
                  width: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ThemeService.colorBackgroundSplashPage),
                ),
                Container(
                  height: 174,
                  width: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ThemeService.colorBackgroundSplashPage),
                ),
                Container(
                  height: 174,
                  width: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ThemeService.colorBackgroundSplashPage),
                ),
                Container(
                  height: 174,
                  width: 164,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ThemeService.colorBackgroundSplashPage),
                ),
              ],
            ))
          ],
        ),
      ),

      // #float bottom
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF0000),
        splashColor: Colors.red,
        onPressed: () {
          bottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),

      // #bottom bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: ThemeService.colorBackgroundSplashPage,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        //New
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.nightlight_outlined,
              ),
              label: "Night Light"),
        ],
      ),
    );
  }
}
