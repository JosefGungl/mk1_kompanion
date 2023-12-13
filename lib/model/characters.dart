import 'package:json_annotation/json_annotation.dart';

part 'characters.g.dart';

@JsonSerializable()
class Character{
  late String id;
  late String name;
  late String image;
  late List<String> moves;
  late String notes;

    Character({
    required this.id,
    required this.name,
    required this.image,
    required this.moves,
    required this.notes
  });

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);

}

 List<Character> allCharacters = [
  Character(
      id: '0',
      name: 'Scorpion',
      image: 'assets/Scorpion.PNG',
      moves: [
        '12 > DB3',
        '12 > BF1 > F32 > F32 > F32 > 4 > BF2',
        'F32 > F32 > F32 > 4 > BK > FF > 33 > DB2',
        '(anit-air)B2 > F1 > F32 > F32 > U4 > DB2 EX > U4 > BF2',
        '(air-to-air)U13 > BF1 > F32 > U12 > DB2 EX > U4 > BF2',
        '(corner)2 > ,BF1 > F32 > F32 > U13 > 4 > BF1'
      ],
      notes: 'Use Sareena as Kameo'
  ),        //0
  Character(
      id: '1',
      name: 'Sub-Zero',
      image: 'assets/SubZero.PNG',
      moves: [
        'F12 > BF3',
        'B2 > U12 > F12 > BF3',
        '12 > DF4 EX > FF > B2 > U12 > F12 > BF3'
        'F12 > DF4 EX > FF > B2 > U112 > DB4 > F12 > BF3',
        '(air)DB4 > 12 > DF4 EX > FF > B2 > U12 > F12 > BF3',
        'F12 > DF4 EX > FF > 21 > DF4 EX > FF > 21 > DF4 EX > FF > B2 > U12 > F12 > BF3',
      ],
      notes: ''
  ),         //1
  Character(
      id: '2',
      name: 'Liu Kang',
      image: 'assets/LiuKang.PNG',
      moves: [
        'BF3 > BF3 EX',
        'B23 > UF134 > BF1',
        'B23 > FF > 333 > BF3',
        'F43 > BF3 EX > BF3',
        'B23 > DB4 > 333 > BF3',
        'F14 > BD4 > F333 > BF3 EX > BF3',
        '(corner)F14 > DB4 > B23 > 333 > BF3 EX > 3BF3'
      ],
      notes: ''
  ),         //2
  Character(
      id: '3',
      name: 'Kitana',
      image: 'assets/Kitana.PNG',
      moves: [
        'B24 > DB1 > U1 > U112 > DB1',
        'FF33 > DB1 > U112',
        '2412 > DB1 > U1 > U112',
        '2412 > K > BF1 EX > U2 > B24 > DB1 > U112',
        '2412 > DB1 > 4 > DB1 > 4 > DB1 > 4 > DB1 > K > 4 > DB1',
        '(corner)B2 > 4 > DB1 > BDF4 > U21 > F12'
      ],
      notes: 'Use Kano as Kameo'
  ),            //3
  Character(
      id: '4',
      name: 'Johnny Cage',
      image: 'assets/JohnnyCage.PNG',
      moves: [
        '11 > BD1 > K > U24',
        'F32 > BF1 > K > U244',
        'F124 > FF > 212 > F12 > BD1 > K > U244',
        '212 > FF > F3 > 212 > FF > 4 > BD1',
        'F124 > FF > B3 > FF > 212 > F12 > BD1 > K > U244',
        '11 > DB3 EX > U2 > U244 > F12 > BD1 > K > U244'
      ], notes: ''
  ),   //4
  Character(
      id: '5',
      name: 'Kenshi',
      image: 'assets/Kenshi.PNG',
      moves: [
        '141 > BF3 > B2 > DB2',
        'F22 > BF3 > B2 > BF2',
        'F22 > BF3 > 4 > BF2',
        '[2] > F221 > [3] > 4 > DB3 > [3] > 4 > DB4',
        '21 > FK > DB1 > [2] > F221 > [3] > 4 > DB3 > [3] > 4 > FINISHER'
      ],
      notes: "Use Sub-Zero as Kameo \nSento Stance. Sento's inputs are notated between []"
  ),            //5
  Character(
      id: '6',
      name: 'Kung Lao',
      image: 'assets/KungLao.PNG',
      moves: [
        '212 > DB4 EX > U > 2 > FF > B24 > FF121 > BF2',
        '121 > DB4 EX > U > 2 > U1 > DB4 > 121 > BF2',
        'B33 > BK > FF > B24 > FF121 > BF2',
        'K > B4 > FF > B24 > FF121 > BF2',
        'F2 > K > FF > B24 > FF121 > BF2',
        'BF2 EX > K > FF > U > 2 > DB4 > 121 > BF2'
      ],
      notes: 'Use Goro as Kameo'
  ),         //6
  Character(
      id: '7',
      name: 'Mileena',
      image: 'assets/Mileena.PNG',
      moves: [
        'F34 > BD4 > 22 > DB4 > F4',
        'F144 > BD4 > 22 > DB4 > F4',
        '12 > DB2 EX 22 > 12 > BD4 > 22 > DB4 > F4',
        '12 > DF2 EX 22 > DF2 > DK > 21 > BD4 > 22 > DB4 > F4',
        'F34 > BD4 > 4 > 4 > BD4 EX UK > 22 > DB4 > F4',
        'F24 > BD4 > 4 > BF1 > UK > 4 > BD4 EX UK > 22 > DB4 > FB'
      ],
      notes: ''
  ),          //7
  Character(
      id: '8',
      name: 'Raiden',
      image: 'assets/Raiden.PNG',
      moves: [
        '2421 > DF2 > FK > 34 > F22 > DF2 > FK > F2 > DF2 EX > 3 > DF2',
        '2421 > DF2 > FK > F34 > 24 > DF2 > FK > 3 > DF2 EX > FINISHER',
        '2421 > DF2 > FK > F34 > 242 > DF2 > FK > 3 > DF2 EX > 3 > DF2',
        '(corner) 2421 > DF2 > FK > F34 > 242 > DF2 > FK > 3 > DF2 EX > 3 > DF2',
        '(corner) F34 > F34 > 242 > DF2 > FK > 3 > DF2 EX > 3 > DF2 > FK > 3 > DF2'
      ],
      notes: ''
  ),            //8
  Character(
      id: '9',
      name: 'Rain',
      image: 'assets/Rain.PNG',
      moves: [
        'F3 > U242 > 112',
        'F32 > U242 > F2 > DB3',
        'F3 > U242 > 2 > DB3',
        'F3 > DB1 EX > U242 > 2 > DB3',
        '(corner) U322 > 114 > DB3',
        '(corner) U322 > 11 > DB3 > JS > U2 > F21 > K > F3 > DB1 EX > U234 > 2 > DB3'
      ],
      notes: 'JS = Jump Switch Stance'
  ),                //9
  Character(
      id: '10',
      name: 'Smoke',
      image: 'assets/Smoke.PNG',
      moves: [
        '11 > FK > 32 > F121+3 > DB2',
        '32 > FF > 32 > 121+3 > DB4 EX > 21 > DB4 EX > UK > DB2',
        'F12 > BF3 > 32 > F4 > DB4 EX > 21 > DB4 EX > 21 > DB4 EX > UK > DB2',
        'U2 > F32 > BF3 > 32 > 32 > F121+3 > FINISHER',
        '(corner) 32 > 4 > F121+3 > DB4 EX > 21 > DB4 EX > UK > U112',
      ],
      notes: ''
  ),              //10
  Character(
      id: '11',
      name: 'Li Mei',
      image: 'assets/LiMei.PNG',
      moves: [
        '124 > DF1 EX > U134 > DB4',
        'U43 > U212 > BF1 EX > U13 > DB4',
        'U3 > B2 > BF1 EX > U134 > DB4',
        '21 > BF1 EX > U134 > DB4',
        '43 > BF1 EX > U134 > DB4',
        'B3 > BF1 EX > U134 > DB4',
        '(anti-air) 3 > DB2 > U212 > BF1 EX > U13 > DB4'
      ],
      notes: ''
  ),             //11
  Character(
      id: '12',
      name: 'Baraka',
      image: 'assets/Baraka.PNG',
      moves: [
        'GRAB > K > U > 14 > DF2',
        'B31 > B31 > F21 > DB1 > K > U > 14 > DF2',
        '21 > DF2 EX > B31 > 21 > DF2',
        '21 > DF2 EX > B31 > 21 > DF2 > K > U > 24 > DF2',
        'F3 > B31 > FF > 21 > DF2',
        'B31 > B31 > F21 > DB1 > K > U > 14 > DF2'
      ],
      notes: 'Use Cyrax as Kameo'
  ),            //12
  Character(
      id: '13',
      name: 'Tanya',
      image: 'assets/Tanya.PNG',
      moves: [
        '12 > BF4 EX > 2 > 13 > DB4',
        'F2 > 1 > 1 > BF4 EX > F3 > 2 > 13 > DB4',
        'F2 > 1 > 1 > BF4 EX > FF > F4 > 2 > 13 > DB4',
        'B3 > 4 > 4 > K > 2 > 13 > DB4',
        'B3 > 4 > 4 > K > 2 > 13 > BF4 EX > U3 > DB4'
      ],
      notes: 'Use Goro or Sonya as Kameo'
  ),              //13
  Character(
      id: '14',
      name: 'Geras',
      image: 'assets/Geras.PNG',
      moves: [
        'F44 > U21 > 1221+3',
        '12 > BF1 EX > F242 > DF4B > 1221+3',
        'B12 > DB4 > FF > B12 > BF1 EX > 4 > DB4 > F2 > DB2',
        'F24 > DF4 > F24 > BF1 EX > 4 > DB4 > F2 > DF2',
        'F44 > U21 > 21 > BF1 EX > 4 > DB4 > F2 > DF2',
        'F44 > U21 > 21 > BF1 EX > 4 > DB4 > F121+3',
        '12 > BF1 EX > 4 > DB4 > FINISHER'
      ],
      notes: ''
  ),              //14
  Character(
      id: '15',
      name: 'Reptile',
      image: 'assets/Reptile.PNG',
      moves: [
        'F21 > DF3 > F2 > 3 > FF > 2 > DF3F > U233 > DB4',
        'F21 > DF3 > F23 > FF > 2 > DF3F > F32',
        'BF3 > DF3F > F23 > FF > 2 > DF3F > U233 > DB4',
        '11 > DF3 > BB > F23 > FF > 2 > DF3F > U233 > DB4',
        'F23 > F23 > FF > F2 > DF3F > U233 > DB4',
        'F23 > FF > 4 > DF3 EX > FF > F2 > DF3F > U233 > DB4',
        'F23 > BB > 4 > 4 > DF3 EX > 4 > DF3F > F32 > FINISHER'
      ],
      notes: ''
  ),          //15
  Character(
      id: '16',
      name: 'Havik',
      image: 'assets/Havik.PNG',
      moves: [
        '11 > BF1 > FF > F1 > F12 > BF2B',
        'B22 > BF1 > B22 > BF2B',
        '11 > BF1 > FF > F1 > DB4 EX',
        '11 > BF1 > B22 > FINISHER',
        '(corner) 11 > BF1 > 3 > BF1 > 22 > BF2'
        '(corner) BF1 > B22 > BF1 > 3 > BF1 > 22 > BF2'
      ],
      notes: ''
  ),              //16
  Character(
      id: '17',
      name: 'Ashrah',
      image: 'assets/Ashrah.PNG',
      moves: [
        '21 > DF1 > F2 > BF2',
        '21 > DF1 > F2 > DF3 EX > U122 > BF2',
        'F42 > DF3 EX > U122 > BF2',
        '21 > DF1 > F2 > FINISHER',
        'F42 > DF3 EX > U2 > F2 > FINISHER',
        'F2 > DF3 EX > U2 > F2 > K > DF3 EX > U2 > F2 > FINISHER',
        '21 > K > DF1 > F2 > BK > U122 > BF2'
      ],
      notes: ''
  ),            //17
  Character(
      id: '18',
      name: 'Sindel',
      image: 'assets/Sindel.PNG',
      moves: [
        '24 > BF2 > F43 > F4 > 24 > BF4',
        '24 > BF4 > F43B > 114 > DB2 > 1 > 3 > BF2',
        '24 > BK > 24 > BK > B2 > DF1 EX > DB2 > 1 > F43 > F4 > 24 > BF2 > 24 > BF4',
        '24 > BK > BK > F43 > 113 > BF1 > DB2 > 1 > F4 > BF2 > 24 > BF4',
        '24 > BK > 24 > BK > 24 > DB1 EX > 24 > BF2 > B2 > DF1 EX > DF2 > 1 > 2 > 2 > 24 > FINISHER'
      ],
      notes: 'Use Sareena as Kameo'
  ),            //18
  Character(
      id: '19',
      name: 'General Shao',
      image: 'assets/GeneralShao.PNG',
      moves: [
        '12 > 22 > DB3',
        '12 > 22 > DB3 EX > DF4 > 2 > DF2',
        'F122 > DF4 > 2 > DF2',
        'F122 > DB3 EX > 2 > DF2',
        'F2 > K > B2 > U2 > 22 > DB2 EX > DF4 > 2 > DF2',
        '(corner) B2 > B2 > B2 > B2 > 22 > DB3 EX > 2 > GRAB',
        '(anit-air) 2 > 2 > 22 > DB3 EX > 2 > DF2'
      ],
      notes: 'Use Motaro as Kameo'
  ), //19
  Character(
      id: '20',
      name: 'Nitara',
      image: 'assets/Nitara.PNG',
      moves: [
        '1212 > U124 > DFFF > U242BF2',
        '1212 > FF > 4 > DB2 > DB4 EX > FF > 4 > DB2 > DB4',
        '121 > 2FF > 4 > DB2 > DB4 EX > U124 > DFFF > U1 > 4 > DF2',
        '1212 > FF > 4 > DB2 > DB4 EX > U124 > DFFF > U242 > BF2',
        '1212 > U124 > DFFF > U24 > FINISHER',
        '1212 > FF > 4 > DB2 > DB4 EX > 4 > DB2 > DB4 EX > 4 > BF2 EX > U3 > FINISHER'
      ],
      notes: ''
  ),            //20
  Character(
      id: '21',
      name: 'Shang Tsung',
      image: 'assets/ShangTsung.PNG',
      moves: [
        'Y B12 > FS > 4 > DF1 > 4 > DF1 > F4 > DF1 > F4 > DB3',
        'Y F4 > FS > 121 > DF1 > 4 > DF1 > 4 > DF1 > 4DF1 > 4 > DB3',
        'Y DB3 EX > 4 > DB1 > 4 > DB1 > 4 > DB3',
        'O F4 > 12 > DF1 > 4 > DF1 > 4 > DF1 > F4 > DF1 > F4 > DB3',
        'O 3 > DF1 > FF > 4 > DF1 > 4 > DF1 > 4 > DB3',
        '(anti-air) O 24 > DF1 > 4 > DF1 > 4 > DF1 > 4 > DB3',
        '(anti-air) Y DB3 > 24 > DF1 > FS > 4 > DF1 > 4 > DF1 > 4 > DB3',
      ],
      notes: 'FS = Form Switch\nInitial form is indicated by Y or O at the beginning'
  ),   //21
  Character(
      id: '22',
      name: 'Reiko',
      image: 'assets/Reiko.PNG',
      moves: [
        'F12 > BF3U > 34 > DB3',
        'F12 > BF3U > 34 > BF3 EX > 3 > DB3',
        'F12 > BF3U > 3 > BDF1 > K > 3 > BF3 EX > 3 > DB3',
        'F12 > BF3U > 34 > BF3 EX > FINISHER',
        'BDF1 EX > K > 34 > DF3 EX > 3 > FINISHER',
        'F12 > BF3U > 3 > BDF1 EX > K > 3 > BF3 EX > 3 > FINISHER'
      ],
      notes: 'Use Darrius as Kameo'
  ),              //22
  Character(
      id: '23',
      name: 'Omni-Man',
      image: 'assets/OmniMan.PNG',
      moves: [
        '12 > DB3 > 1 > U212 > VS > 12 > 1+3',
        'B11 > U212 > DB3 > 1 > U212 > VS > 12 > 1+3',
        'B11 > U12 > 22 > DB3 > 1 > U212 > VS > 12 > 1+3',
        'F41 > 12 > DB3 > 1 > U212 > VS > 12 > 1+3',
        'B11 > U212 > VS > 212 > DB3 > 1 > U212 > BF2',
        'B11 > U212 > DB3 > 1 > U212 > VS > 212 > DB3 > 1',
        '12 > DB3 > 1 > FF > 4 > FINISHER',
        'DBF3 > 3 > 12 > DB3 > 1 > U212 > VS > 12 > 1+3',
        'U2 > BF4 > 12 > DB3 > 1 > U212 > VS > 12 > 1+3'
      ],
      notes: 'VS = Viltrumite Stance - F + Switch Stance'
  ),         //23
];

// key
// 1-X □
// 2-Y △
// 3-A x
// 4-B 〇