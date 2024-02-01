import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vodafone_challenge/screens/screen1.dart';
import 'package:vodafone_challenge/screens/screen2.dart';
import 'package:vodafone_challenge/screens/screen3.dart';
import 'package:vodafone_challenge/screens/screen4.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

PageController pageController = PageController();

int selectedIndex = 0;

List<Widget> screens = [
  const Screen1(),
  const Screen2(),
  const Screen3(),
  const Screen4(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(157, 247, 252, 252),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/vodaIcon.png')),
                shape: BoxShape.circle,
              ),
            ),
            const Text(
              "Good morning, Linxter",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FluentIcons.alert_24_filled,
                color: Color(0xffE30613),
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 1,
        toolbarHeight: 100,
      ),
      body: PageView(
        controller: pageController,
        children: const [
          Screen1(),
          Screen2(),
          Screen3(),
          Screen4(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/tobi.jpg'),
          ),
          borderRadius: BorderRadius.circular(45),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xffF8F8F8),
        height: 87,
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.0,
        elevation: 0,
        clipBehavior: Clip.none,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff363B49),
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff363B49),
            ),
            backgroundColor: const Color(0xffF8F8F8),
            elevation: 0,
            currentIndex: selectedIndex,
            selectedItemColor: const Color(0xff363B49),
            unselectedItemColor: const Color(0xff363B49),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  FluentIcons.phone_desktop_24_regular,
                  size: 32,
                  color: Color(0xff363B49),
                ),
                label: 'Services',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FluentIcons.closed_caption_24_regular,
                  size: 32,
                  color: Color(0xff363B49),
                ),
                label: 'Cash',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FluentIcons.add_circle_24_regular,
                  size: 32,
                  color: Color(0xff363B49),
                ),
                label: 'Bundles',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FluentIcons.settings_24_regular,
                  size: 32,
                  color: Color(0xff363B49),
                ),
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
                pageController.jumpToPage(selectedIndex);
              });
            },
          ),
        ),
      ),
    );
  }
}
