import 'package:flutter/material.dart';
import './models/location.dart';
import 'styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  const LocationDetail({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name, style: Styles.navBarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(location),
      ),
    );
  }
}

List<Widget> _renderBody(Location location) {
  final result = <Widget>[];
  result.add(_bannerImage(location.imglink, 250.0));
  result.addAll(_renderFacts(location));
  return result;
}

List<Widget> _renderFacts(Location location) {
  final result = <Widget>[];

  for (int i = 0; i < location.facts.length; i++) {
    result.add(_sectionTitle(location.facts[i].title));
    result.add(_sectioniText(location.facts[i].text));
  }
  return result;
}

Widget _sectioniText(String text) {
  return Container(
    padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
    child: Text(text, style: Styles.textDefault),
  );
}

Widget _sectionTitle(String title) {
  return Container(
    padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
    child: Text(title, textAlign: TextAlign.left, style: Styles.headerLarge),
  );
}

Widget _bannerImage(String url, double height) {
  return Container(
    constraints: BoxConstraints.tightFor(height: height),
    child: Image.network(url, fit: BoxFit.fitWidth),
  );
}
