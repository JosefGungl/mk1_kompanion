import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mk1_companion/Pages/fighter.dart';

import '../model/characters.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);


  @override
  Widget build(BuildContext context) {
    List<Character> characters = allCharacters;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('MK1 Kompanion'),
        backgroundColor: Colors.black54,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Colors.white),
      ),

        body: Column(
          children: [
            const SizedBox(height: 70,),
            const Padding(padding: EdgeInsets.only(left:13),
              child: Text(
                  'Featured Fighter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  )
              ),
            ), //"Featured fighter"

            const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => FighterPage(character: characters[0])));
                },
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 40,
                      bottom: 7.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: SizedBox(
                              width: 85,
                              height: 85,
                              child: Image.asset('assets/Scorpion.PNG',scale: 1,),
                            ),
                          ),
                        ],
                      ),
                    ), //FF Image

                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Container(
                        padding: const EdgeInsets.only(left: 130),
                        width: 350,
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text(
                          'Scorpion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //FF

            const SizedBox(height: 100,),
            const Padding(padding: EdgeInsets.only(left: 13),
              child: Text(
                'New Kontent',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),//"New Kontent"

            const SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 9),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => FighterPage(character: characters[23])));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 130),
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/OmniMan.PNG'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),//GD1

                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => FighterPage(character: characters[1])));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 130),
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/SubZero.PNG'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ), //GD2

                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => FighterPage(character: characters[2])));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 130),
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/LiuKang.PNG'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ), //GD3
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 9,),
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      alignment: AlignmentDirectional.topCenter,
                      width: 115,
                      height: 115,
                      child: const Text('New Fighter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),


                    const SizedBox(width: 15,),
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      alignment: AlignmentDirectional.topCenter,
                      width: 115,
                      height: 115,
                      child: const Text('New Kombo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    const SizedBox(width: 15,),
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      alignment: AlignmentDirectional.topCenter,
                      width: 115,
                      height: 115,
                      child: const Text('New Kombo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )

          ], //Children
        ),

      bottomNavigationBar: Container(
        color: Colors.grey.shade900,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child:  GNav(
            gap: 8,
            backgroundColor: Colors.grey.shade900,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(10),
            tabs: const [
              GButton(
                icon: LineIcons.search,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'Favorites',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/searchpage');
                  break;
                case 1:
                  Navigator.pushNamed(context, '/homepage');
                  break;
                case 2:
                  Navigator.pushNamed(context, '/favoritepage');
                  break;
              }
            }
          ),
          ),
        ),
      );
  }
}
