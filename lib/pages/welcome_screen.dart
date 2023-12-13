import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage ({super.key});



  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/HomeScreenBg.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child:  Scaffold(
      backgroundColor: Colors.transparent,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40,),
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(left:0),
                child: Text(
                    'MK1\nKompanion',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'AlfaSlabOne',
                        fontWeight: FontWeight.w800,
                        fontSize: 38
                    )
                ),
              ),
              const SizedBox(height: 500,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                   child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Text('Welcome',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'AlfaSlabOne',
                            color: Colors.white60,
                            fontWeight: FontWeight.w800,
                            fontSize: 24
                        ),
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      ),
      ),
    );
}