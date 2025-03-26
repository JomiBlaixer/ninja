import 'package:flutter/material.dart';
import 'package:ninja1/modell/character.dart';
import 'package:ninja1/mytheme.dart';
import 'package:ninja1/pages/profile_page.dart';
import 'package:ninja1/resources/text_styled.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              'assets/img/vocations/${character.vocation.image}',
              width: 180,
            ),
            SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingStyled(character.name),
                TextStyled(character.vocation.description),
              ],
            ),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(character),
                    ));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: AppColor.textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
