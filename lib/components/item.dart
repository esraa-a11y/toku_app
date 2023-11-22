import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
class Item extends StatelessWidget {
  const Item({Key? key,required this.number, required this.color}) : super(key: key);
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            child: Image.asset(number.image!),
            color: Colors.yellow[100],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName,style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),
                Text(number.enName,style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),

              ],
            ),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));
                  },
                icon: Icon(Icons.play_arrow,color: Colors.white,size: 30,),

          ),

          ),
        ],

      ),

    );
  }

}
class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.number,  required this.color}) : super(key: key);
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all( 15.0),
                  child: Text(number.jpName,style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,

                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(number.enName,style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  ),
                ),

              ],
            ),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: Icon(Icons.play_arrow,color: Colors.white,size: 30,),

            ),

          ),

        ],
      ),
    );
  }
}
