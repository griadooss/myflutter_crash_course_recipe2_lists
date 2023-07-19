import './location_fact.dart';

class Location {
  final String name;
  final String imglink;
  final List<LocationFact> facts;
  //constructor
  Location({required this.name, required this.imglink, required this.facts});
}
