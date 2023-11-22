import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';
class NumbersPage extends StatelessWidget {
   NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = [
    ItemModel( sound:'sounds/numbers/number_one_sound.mp3',jpName: 'ichi', enName: 'one', image: 'assets/images/numbers/number_one.png'),
    ItemModel(sound:'sounds/numbers/number_two_sound.mp3',jpName: 'Ni', enName: 'two', image: 'assets/images/numbers/number_two.png'),
    ItemModel(sound:'sounds/numbers/number_three_sound.mp3',jpName: 'San', enName: 'three', image: 'assets/images/numbers/number_three.png'),
    ItemModel(sound:'sounds/numbers/number_four_sound.mp3',jpName: 'Shi', enName: 'four', image: 'assets/images/numbers/number_four.png'),
    ItemModel(sound:'sounds/numbers/number_five_sound.mp3',jpName: 'Go', enName: 'five', image: 'assets/images/numbers/number_five.png'),
    ItemModel(sound:'sounds/numbers/number_six_sound.mp3',jpName: 'Roku', enName: 'six', image: 'assets/images/numbers/number_six.png'),
    ItemModel(sound:'sounds/numbers/number_seven_sound.mp3',jpName: 'Sebun', enName: 'seven', image: 'assets/images/numbers/number_seven.png'),
    ItemModel(sound:'sounds/numbers/number_eight_sound.mp3',jpName: 'Hachi', enName: 'eight', image: 'assets/images/numbers/number_eight.png'),
    ItemModel(sound:'sounds/numbers/number_nine_sound.mp3',jpName: 'Kyū', enName: 'nine', image: 'assets/images/numbers/number_nine.png'),
    ItemModel(sound:'sounds/numbers/number_ten_sound.mp3',jpName: 'Jū', enName: 'ten', image: 'assets/images/numbers/number_ten.png'),

  ];
  // List<String> sounds =[];

  @override
  Widget build(BuildContext context) {
    ItemModel one = ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png');
    return Scaffold(
     appBar: AppBar(
       title: Text('Numbers'),
       backgroundColor: Colors.brown[900],

     ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            color: Colors.orange,
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
