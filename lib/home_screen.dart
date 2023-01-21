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
  Themas thema = Themas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
            child: Container(
              //height: 80.0,
              //width: double.infinity,
              color: thema.primaryColor,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                children: <Widget>[
                  //Substituir pelas Telas que serão exibidas
                  Container(
                    color: thema.primaryColor,
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
                  Container(
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              color: thema.backgroundColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BottomNavigationBar(
                      showSelectedLabels: true,
                      showUnselectedLabels: true,
                      currentIndex: selectedIndex,
                      unselectedItemColor: thema.primaryColor,
                      onTap: (index) {
                        _pageController.jumpToPage(index);
                      },
                      selectedItemColor: thema.selectedColor,
                      elevation: 0.0,
                      unselectedLabelStyle: thema.style,
                      selectedLabelStyle: thema.style,
                      items: [
                        BottomNavigationBarItem(
                          backgroundColor: thema.backgroundColor,
                          icon: const Icon(
                            Icons.person,
                            size: 23.3,
                          ),
                          label: 'Início',
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: thema.backgroundColor,
                          icon: const Icon(
                            Icons.extension,
                            size: 23.3,
                          ),
                          label: "Problemas",
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: thema.backgroundColor,
                          icon: const Icon(
                            Icons.face_retouching_natural,
                            size: 23.3,
                          ),
                          label: "Aprender",
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: thema.backgroundColor,
                          icon: const Icon(
                            Icons.settings_outlined,
                            size: 23.3,
                          ),
                          label: "Observar",
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: thema.backgroundColor,
                          icon: const Icon(
                            Icons.menu,
                            size: 23.3,
                          ),
                          label: "Mais",
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 25.0, right: 20.0, bottom: 8.0),
                      color: thema.selectedColor,
                      height: 1.0,
                    )
                  ]))
        ]));
  }
}
