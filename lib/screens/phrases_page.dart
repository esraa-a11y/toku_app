import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';
class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = [
    ItemModel( sound:'sounds/phrases/are_you_coming.wav',enName: 'are you coming', jpName: 'Kimasu ka', ),
    ItemModel(sound:'sounds/phrases/dont_forget_to_subscribe.wav',enName: 'dont forget to subscribe', jpName: 'Kōdoku suru koto o wasurenaide kudasai',),
    ItemModel(sound:'sounds/phrases/how_are_you_feeling.wav',enName: 'how are you feeling', jpName: 'Go kibun wa ikagadesu ka.',),
    ItemModel(sound:'sounds/phrases/i_love_anime.wav',enName: 'i love anime', jpName: 'Watashi wa anime ga daisukidesu',),
    ItemModel(sound:'sounds/phrases/i_love_programming.wav',enName: 'i love programming', jpName: 'Watashi wa puroguramingu ga daisukidesu',  ),
    ItemModel(sound:'sounds/phrases/programming_is_easy.wav',enName: 'programming is easy', jpName: 'Puroguramingu wa kantandesu',  ),
    ItemModel(sound:'sounds/phrases/what_is_your_name.wav',enName: 'what is your name', jpName: 'Anata no namae wa nandesuka', ),
    ItemModel(sound:'sounds/phrases/where_are_you_going.wav',enName: 'where are you going', jpName: 'Doko ni iku no', ),
    ItemModel(sound:'sounds/phrases/yes_im_coming.wav',enName: 'yes im coming', jpName: 'Hai, kimasu',),

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
        title: Text('Phrases'),
        backgroundColor: Colors.brown[900],

      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return PhrasesItem(
             color: Colors.blueAccent,
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
