import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:red_todo_app/pages/home_page.dart';
import '../services/theme_service.dart';

class SearchPage extends StatefulWidget {
  static const id = "/search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _goHomePage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }

  /*
  void _goSettingScreen() {
    // TODO: navigate setting page
  }
   */
  /*
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
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.colorBackgroundLight,
      // #appBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ThemeService.colorBackgroundLight,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: ThemeService.colorBackgroundLight,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(CupertinoIcons.clear_circled),
                  onPressed: () {},
                ),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      // #Body
      body: SingleChildScrollView(
        child: Column(
          children: [
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
        backgroundColor: ThemeService.colorBackgroundSplashPage,
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
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: _goHomePage,
              icon: const Icon(Icons.home),
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.nightlight_outlined,
            ),
            label: "Night Light",
          ),
        ],
      ),
    );
  }
}
