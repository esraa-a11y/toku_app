import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';
class FamilyMembers extends StatelessWidget {
  FamilyMembers({Key? key}) : super(key: key);
  final List<ItemModel> numbers = [
    ItemModel( sound:'sounds/family_members/father.wav',jpName: 'Chichioya', enName: 'father', image: 'assets/images/family_members/family_father.png'),
    ItemModel(sound:'sounds/family_members/daughter.wav',jpName: 'Musume', enName: 'daughter', image: 'assets/images/family_members/family_daughter.png'),
    ItemModel(sound:'sounds/family_members/grand father.wav',jpName: 'Sofu', enName: 'grand father', image: 'assets/images/family_members/family_grandfather.png'),
    ItemModel(sound:'sounds/family_members/grand mother.wav',jpName: 'Sobo', enName: 'grand mother', image: 'assets/images/family_members/family_grandmother.png'),
    ItemModel(sound:'sounds/family_members/mother.wav',jpName: 'Hahaoya', enName: 'mother', image: 'assets/images/family_members/family_mother.png'),
    ItemModel(sound:'sounds/family_members/older bother.wav',jpName: 'Ani', enName: 'older bother', image: 'assets/images/family_members/family_older_brother.png'),
    ItemModel(sound:'sounds/family_members/older sister.wav',jpName: 'Ane', enName: 'older sister', image: 'assets/images/family_members/family_older_sister.png'),
    ItemModel(sound:'sounds/family_members/son.wav',jpName: 'Musuko', enName: 'son', image: 'assets/images/family_members/family_son.png'),
    ItemModel(sound:'sounds/family_members/younger brohter.wav',jpName: 'Otōto', enName: 'younger brohter', image: 'assets/images/family_members/family_younger_brother.png'),
    ItemModel(sound:'sounds/family_members/younger sister.wav',jpName: 'Imōto', enName: 'younger sister', image: 'assets/images/family_members/family_younger_sister.png'),

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
        title: Text('Family Members'),
        backgroundColor: Colors.brown[900],

      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            color: Colors.green,
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
