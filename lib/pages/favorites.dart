import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mk1_companion/provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/characters.dart';
import 'fighter.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}
class _FavoritePageState extends State<FavoritePage> {
  List<Character> characters = allCharacters;
  final int _selectedIndex = 2;
  late SharedPreferences sharedPreferences;

  @override
  void initState(){
    super.initState();
    // initialGetSavedData();
  }

  void initialGetSavedData()async{
    sharedPreferences = await SharedPreferences.getInstance();

    Map<String, dynamic> jsonData = jsonDecode(sharedPreferences.getString('data')!);
    Character character = Character.fromJson(jsonData);

    if(jsonData.isNotEmpty) {
      FavoriteProvider().fCharacters.add(character);
      print('list');
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final fCharacters = provider.fCharacters;

    initialGetSavedData();

    return ChangeNotifierProvider(
        create: (context) => FavoriteProvider(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Favorites'),
          backgroundColor: Colors.black87,
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Colors.white
          ),
        ),

        body: ListView.builder(
            itemCount: fCharacters.length,
            itemBuilder: (context, index) {
              final character = fCharacters[index];

              return Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 20),
                  child: ListTile(
                    leading: Image.asset(
                      character.image,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                    trailing: IconButton(
                      onPressed: (){
                        provider.toggleFavorite(character);
                      },
                      icon: provider.isExist(character)
                          ? const Icon(LineIcons.heartAlt, color: Colors.red,)
                          : const Icon(LineIcons.heart),
                    ),
                    title: Text(
                      character.name,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => FighterPage(character: character))),
                    titleTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  )
              );
            }
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
      ),
    );
  }
}
