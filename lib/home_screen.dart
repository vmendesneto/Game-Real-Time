import 'package:flutter/material.dart';
import 'package:telas_projeto/tema/tema.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: themes[0].primaryColor,
        child: PageView(
          controller: _pageController,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (index) {
            setState(() {
              selectedIndex = index;
            });

          },
          children: <Widget>[
            //Substituir pelas Telas que serão exibidas
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: themes[0].textTheme.bodyText1!.color,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        selectedItemColor: themes[0].indicatorColor,
        backgroundColor: themes[0].primaryColor,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 23.3,
            ),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.extension,
              size: 23.3,
            ),
            label: "Problemas",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face_retouching_natural,
              size: 23.3,
            ),
            label: "Aprender",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: 23.3,
            ),
            label: "Observar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.,
              size: 23.3,
            ),
            label: "Mais",
          ),
        ],
      ),
    );
  }
}
