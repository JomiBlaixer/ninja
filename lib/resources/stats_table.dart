import 'package:flutter/material.dart';
import 'package:ninja1/modell/character.dart';
import 'package:ninja1/mytheme.dart';
import 'package:ninja1/resources/text_styled.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.character, {super.key});

  final Character character;

  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          // Available points
          Container(
            color: AppColor.primaryAccent.withAlpha(80),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: widget.character.points == 0
                      ? Colors.grey
                      : Colors.amberAccent,
                ),
                SizedBox(width: 20.0),
                Text('These are the availables points for your character'),
                Expanded(child: SizedBox()),
                TitleStyled(widget.character.points.toString())
              ],
            ),
          ),
          SizedBox(height: 20.0),

          // Stats Table
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Table(
              children: widget.character.statAsList.map((stat) {
                return TableRow(
                    decoration: BoxDecoration(
                        color: AppColor.primaryAccent.withAlpha(30)),
                    children: [
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HeadingStyled(stat['title']!),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HeadingStyled(stat['value']!),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.character
                                        .increaseStat(stat['title']!);
                                  });
                                },
                                icon: Icon(
                                  Icons.arrow_upward,
                                  color: AppColor.textColor,
                                )),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.character
                                        .decreaseStat(stat['title']!);
                                  });
                                },
                                icon: Icon(
                                  Icons.arrow_downward,
                                  color: AppColor.textColor,
                                )),
                          )),
                    ]);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
