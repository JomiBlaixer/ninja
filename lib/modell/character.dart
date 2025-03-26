import 'package:ninja1/modell/skill.dart';
import 'package:ninja1/modell/stats.dart';
import 'package:ninja1/modell/vocation.dart';

class Character with Stats {
  final Set skillList = {};
  final Vocation vocation;
  final String id;
  final String name;
  final String slogan;
  bool _isFav = false;

  Character(
      {required this.id,
      required this.name,
      required this.vocation,
      required this.slogan});

  bool get isFav => _isFav;

  void toogleFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skillList.clear();
    skillList.add(skill);
  }
}

final List<Character> characters = [
  Character(
      id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'Kapumf!'),
  Character(
      id: '2',
      name: 'Jonny',
      vocation: Vocation.junkie,
      slogan: 'Light me up...'),
  Character(
      id: '3',
      name: 'Crimson',
      vocation: Vocation.raider,
      slogan: 'Fire in the hole!'),
  Character(
      id: '4',
      name: 'Shaun',
      vocation: Vocation.ninja,
      slogan: 'Alright then gang.'),
];
