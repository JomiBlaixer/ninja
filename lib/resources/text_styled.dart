import 'package:flutter/material.dart';

class TextStyled extends StatelessWidget {
  const TextStyled(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}

class HeadingStyled extends StatelessWidget {
  const HeadingStyled(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}

class TitleStyled extends StatelessWidget {
  const TitleStyled(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium);
  }
}
