import 'package:flutter/material.dart';
import 'package:ninja1/modell/character.dart';
import 'package:ninja1/mytheme.dart';
import 'package:ninja1/resources/button_styled.dart';
import 'package:ninja1/resources/skill_list.dart';
import 'package:ninja1/resources/stats_table.dart';
import 'package:ninja1/resources/text_styled.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleStyled(character.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Basic info - image, vocation and description

              Container(
                color: AppColor.primaryAccent.withAlpha(80),
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/img/vocations/${character.vocation.image}',
                      width: 180.0,
                      height: 180.0,
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(character.vocation.title),
                        Text(character.vocation.description)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Icon(
                Icons.code,
                color: AppColor.primaryAccent,
              ),
              SizedBox(height: 20.0),

              // weapon and ability

              Container(
                color: AppColor.primaryAccent.withAlpha(80),
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleStyled('Slogan'),
                      Text(character.slogan),
                      TitleStyled('Weapon of choice'),
                      Text(character.vocation.weapon),
                      TitleStyled('Unique Ability'),
                      Text(character.vocation.ability)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Icon(
                Icons.code,
                color: AppColor.primaryAccent,
              ),
              SizedBox(height: 20.0),

              // Stats and Skills
              StatsTable(character),
              SkillList(character),

              // save button

              ButtonStyled(onPressed: () {}, child: HeadingStyled('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
