import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mk1_companion/Pages/fighter.dart';
import 'package:mk1_companion/model/characters.dart';
import 'package:provider/provider.dart';
import '../provider/favorite_provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Character> characters = allCharacters;
  final int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: const Text('Search'),
          backgroundColor: Colors.black87,
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Colors.white
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(LineIcons.chevronLeft, color: Colors.white),
          ),
        ),

        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(LineIcons.search),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white),
                  focusColor: Colors.white,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white)
                  ),
                ),
                onChanged: searchCharacter,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: characters.length,
                  itemBuilder: (context, index) {
                    final character = characters[index];

                    return Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 20),
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
            ),
          ],
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


  void searchCharacter(String query){
    final suggestions = allCharacters.where((character) {
      final name = character.name.toLowerCase();
      final input = query.toLowerCase();

      return name.contains(input);

    }).toList();

    setState(() => characters = suggestions);
  }
}