import 'package:flutter/material.dart';
import 'package:ninja1/modell/character.dart';
import 'package:ninja1/modell/skill.dart';

class SkillList extends StatefulWidget {
  const SkillList(this.character, {super.key});

  final Character character;

  @override
  State<SkillList> createState() => _SkillListState();
}

class _SkillListState extends State<SkillList> {
  late List<Skill> availableSkill;

  @override
  void initState() {
    availableSkill = allSkill.where((skill) {
      return skill.vocation == widget.character.vocation;
    }).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text('choose an active skill'),
            Text('Skill are unique to your character'),
            SizedBox(height: 20.0),
            Row(
              children: availableSkill.map((skill) {
                return Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  child: Image.asset(
                    'assets/img/skills/${skill.image}',
                    width: 120,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0)
          ],
        ),
      ),
    );
  }
}
