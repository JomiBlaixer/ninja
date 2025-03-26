import 'package:flutter/material.dart';
import 'package:ninja1/modell/character.dart';
import 'package:ninja1/modell/vocation.dart';
import 'package:ninja1/mytheme.dart';
import 'package:ninja1/pages/home_page.dart';
import 'package:ninja1/resources/button_styled.dart';
import 'package:ninja1/resources/text_styled.dart';
import 'package:ninja1/resources/vocation_card.dart';
import 'dart:math';

String iD() {
  final random = Random();
  return random.nextInt(100).toString();
}

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController sloganController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    sloganController.dispose();
    super.dispose();
  }

  Vocation selectedVocation = Vocation.junkie;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  void handleSubmit() {
    if (nameController.text.trim().isEmpty) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (cxt) {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            title: Text('Name is missing'),
            content: Text('Type in the character name'),
            actions: [
              ButtonStyled(
                  onPressed: () => Navigator.pop(cxt), child: Text('Salir'))
            ],
          );
        },
      );
      return;
    }
    if (sloganController.text.trim().isEmpty) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (cxt) {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            title: Text('Slogan is missing'),
            content: Text('Type in a cool slogan'),
            actions: [
              ButtonStyled(
                  onPressed: () {
                    Navigator.pop(cxt);
                  },
                  child: HeadingStyled('Salir'))
            ],
          );
        },
      );
      return;
    }

    characters.add(Character(
        id: iD(),
        name: nameController.text,
        vocation: selectedVocation,
        slogan: sloganController.text));

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character Creation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.code,
                  color: AppColor.textColor,
                ),
                Text('welcome to your new character'),
                Text('Choose a good name for you character...'),
                SizedBox(height: 10),
                //=======================================================================================
                TextField(
                  style: Theme.of(context).textTheme.bodyMedium,
                  cursorColor: AppColor.textColor,
                  controller: nameController,
                  decoration: InputDecoration(
                      label: Text('Character Name'),
                      prefixIcon: Icon(Icons.person_2)),
                ),
                //=======================================================================================
                SizedBox(height: 16.0),
                Text('Tipe in the slogan that best describe your character...'),
                SizedBox(height: 16.0),
                //=======================================================================================
                TextField(
                  style: Theme.of(context).textTheme.bodyMedium,
                  cursorColor: AppColor.textColor,
                  controller: sloganController,
                  decoration: InputDecoration(
                      label: Text('Character Slogan'),
                      prefixIcon: Icon(Icons.chat)),
                ),
                //=======================================================================================
                Icon(
                  Icons.code,
                  color: AppColor.textColor,
                ),
                Text('This is where you pick a vocation for you character'),
                Text(
                    'The vocation selected will determine the abilities of you character'),
                SizedBox(height: 30),

                VocationCard(
                  selected: selectedVocation == Vocation.junkie,
                  vocation: Vocation.junkie,
                  onTap: updateVocation,
                ),
                VocationCard(
                  selected: selectedVocation == Vocation.ninja,
                  vocation: Vocation.ninja,
                  onTap: updateVocation,
                ),
                VocationCard(
                  selected: selectedVocation == Vocation.raider,
                  vocation: Vocation.raider,
                  onTap: updateVocation,
                ),
                VocationCard(
                  selected: selectedVocation == Vocation.wizard,
                  vocation: Vocation.wizard,
                  onTap: updateVocation,
                ),

                ButtonStyled(
                    onPressed: handleSubmit, child: TextStyled('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
