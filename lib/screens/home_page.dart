import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('Toku'),
        backgroundColor: Colors.brown[900],


      ),
      body: Container(
        color: Colors.yellow[100],
        child: Column(
          children: [
            Category(
              text: 'Numbers',
              color: Colors.orange,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return NumbersPage();
                }));

              },
            ),
            Category(
              text: 'Family Members',
              color: Colors.green[900],
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return FamilyMembers();
                }));

              },
            ),
            Category(
              text: 'Colors',
              color: Colors.purple,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return ColorsPage();
                }));

              },
            ),
            Category(
              text: 'Phrases',
              color: Colors.blueAccent,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return PhrasesPage();
                }));

              },
            ),

          ],
        ),
      ),
    );
  }
}
