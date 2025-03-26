import 'package:flutter/material.dart';
import 'package:ninja1/modell/character.dart';
import 'package:ninja1/pages/create_page.dart';
import 'package:ninja1/resources/button_styled.dart';
import 'package:ninja1/resources/character_card.dart';
import 'package:ninja1/resources/text_styled.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleStyled('Ninja App 1'),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: characters.length,
                  itemBuilder: (context, index) {
                    return CharacterCard(characters[index]);
                  },
                ),
              ),
              SizedBox(height: 20),
              ButtonStyled(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreatePage(),
                        ));
                  },
                  child: HeadingStyled('Create New'))
            ],
          )),
    );
  }
}
