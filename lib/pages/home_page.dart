import 'package:flutter/material.dart';
import 'package:red_todo_app/pages/grid_page.dart';
import 'package:red_todo_app/pages/search_page.dart';
import '../models/user_model.dart';
import '../services/theme_service.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late User _user;
  int _selectedIndex = 0;

  @override
  initState() {
    super.initState();
    _getUser();
  }

  void _getUser() {
    // TODO: concrete updated => read user from database
    _user = User("Antonio Bonilla", "antonio.bonilla@horus.com.uy");
  }

  void _goSettingScreen() {
    // TODO: navigate setting page
  }

  void _showSearch() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const SearchPage();
        },
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.colorBackgroundLight,
      // #appBar
      appBar: AppBar(
        backgroundColor: ThemeService.colorBackgroundLight,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: _goSettingScreen,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return const GridPage();
                }));
              },
              child: Container(
                margin:
                    const EdgeInsets.only(top: 12, bottom: 12, left: 2, right: 2),
                height: 10,
                width: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/gridview.png"),
                  ),
                ),
              ),
            ),
          ),
        ),
        centerTitle: false,
        title: const Text(
          "My Tasks",
          style: TextStyle(
              color: Colors.red, fontSize: 32),
        ),
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: _showSearch,
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),

      // #Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // #Whats on your mind?
            Container(
              padding: const EdgeInsets.only(right: 22),
              height: 30,
              width: 300,
              child: const Text(
                "Whats on your mind?",
                style: TextStyle(
                    color: ThemeService.colorBackgroundSplashPage,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),

            // #note 1
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Container(
                height: 100,
                width: 330,
                decoration: BoxDecoration(
                  color: ThemeService.colorBackgroundSplashPage,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // #Pay Emma
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 40, top: 10),
                          child: Text(
                            "Pay Emma",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    // #check, delete icon
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Image.asset(
                            "assets/icons/check.png",
                            height: 28,
                            width: 24,
                          ),
                        ),
                        const SizedBox(width: 255),
                        Image.asset(
                          "assets/icons/trash.png",
                          height: 27,
                          width: 24,
                        )
                      ],
                    ),
                    // #20 dollars for manga
                    const Padding(
                      padding: EdgeInsets.only(right: 85),
                      child: Text(
                        "20 dollars for manga",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // #note 2
            Container(
              margin: const EdgeInsets.only(left: 22),
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                color: ThemeService.colorBackgroundSplashPage,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(),
            ),
            const SizedBox(height: 20),

            // #note 3
            Container(
              margin: const EdgeInsets.only(left: 22),
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                color: ThemeService.colorBackgroundSplashPage,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(),
            ),
            const SizedBox(height: 20),

            // #note 4
            Container(
              margin: const EdgeInsets.only(left: 22),
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                color: ThemeService.colorBackgroundSplashPage,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(),
            ),
            const SizedBox(height: 20),

            // #note 5
            Container(
              margin: const EdgeInsets.only(left: 22),
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                color: ThemeService.colorBackgroundSplashPage,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(),
            ),
            const SizedBox(height: 20),

            // #note 6
            Container(
              margin: const EdgeInsets.only(left: 22),
              height: 90,
              width: 330,
              decoration: BoxDecoration(
                color: ThemeService.colorBackgroundSplashPage,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),

      // #float button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        splashColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // #bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
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
