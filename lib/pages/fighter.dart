import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../model/characters.dart';

class FighterPage extends StatelessWidget {
  final Character character;
  const FighterPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            expandedHeight: 350,
            collapsedHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(character.image),
                fit: BoxFit.fill,
              ),
            ),
            // title: Text(character.name),
            // backgroundColor: Colors.black87,
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.white
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(LineIcons.chevronLeft, color: Colors.black),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 5, right: 5),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text(
                          character.moves[index],
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        )
                        ),
                      ),
                    );
                  },
                childCount: character.moves.length
              ),
          ),
        ],
      ),
    );
  }
}
