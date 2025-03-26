import 'package:flutter/material.dart';
import 'package:ninja1/modell/vocation.dart';
import 'package:ninja1/mytheme.dart';

class VocationCard extends StatelessWidget {
  const VocationCard(
      {super.key,
      required this.vocation,
      required this.onTap,
      required this.selected});

  final Vocation vocation;
  final void Function(Vocation) onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(vocation);
      },
      child: Card(
        color: selected
            ? AppColor.primaryAccent.withAlpha(20)
            : Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                'assets/img/vocations/${vocation.image}',
                width: 100.0,
                colorBlendMode: BlendMode.color,
                color:
                    selected ? Colors.transparent : Colors.white.withAlpha(200),
              ),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(vocation.title), Text(vocation.description)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
