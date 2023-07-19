import 'package:flutter/material.dart';
import './mocks/mock_location.dart';
import './location_detail.dart';
import './models/location.dart';

void main() {
  final Location mockLoction = MockLocation.fetchAny();

  runApp(MaterialApp(home: LocationDetail(location: mockLoction)));
}
