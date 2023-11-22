import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';
class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = [
    ItemModel( sound:'sounds/colors/black.wav',jpName: 'Kuro', enName: 'black', image: 'assets/images/colors/color_black.png'),
    ItemModel(sound:'sounds/colors/brown.wav',jpName: 'Chairo', enName: 'brown', image: 'assets/images/colors/color_brown.png'),
    ItemModel(sound:'sounds/colors/dusty yellow.wav',jpName: 'Dasutiierō', enName: 'dusty yellow', image: 'assets/images/colors/color_dusty_yellow.png'),
    ItemModel(sound:'sounds/colors/gray.wav',jpName: 'Gurē', enName: 'gray', image: 'assets/images/colors/color_gray.png'),
    ItemModel(sound:'sounds/colors/green.wav',jpName: 'Midori', enName: 'green', image: 'assets/images/colors/color_green.png'),
    ItemModel(sound:'sounds/colors/red.wav',jpName: 'Aka', enName: 'red', image: 'assets/images/colors/color_red.png'),
    ItemModel(sound:'sounds/colors/white.wav',jpName: 'Shiro', enName: 'white', image: 'assets/images/colors/color_white.png'),
    ItemModel(sound:'sounds/colors/yellow.wav',jpName: 'Kiiro', enName: 'yellow', image: 'assets/images/colors/yellow.png'),

  ];
  // List<String> sounds =[];

  @override
  Widget build(BuildContext context) {
    ItemModel one = ItemModel(
        sound: 'sounds/family_members/father.wav',
        jpName: 'ichi',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png');
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Colors.brown[900],

      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            color: Colors.purple,
            number: numbers[index],
            // sound: sounds[index],
          );
        },


      ),
    );
  }
//  List<Widget> getList(List<Number> numbers){
//    List<Widget> itemsList = [];
//    for(int i =0 ; i < numbers.length ; i++){
//     itemsList.add(Item(number: numbers[i]));
//    }
// return itemsList;
//  }
}
