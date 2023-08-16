
import 'dart:async';

import 'package:checkscheme/_app/app.locator.dart';
import 'package:checkscheme/screens/landing/landing_screen_viewmodel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  setupLocator();
  group('Filter Search Results', () {
    test('Filters items correctly', () {

      // Mock data
      List<String> duplicateItems = [
        'Dallas',
        'Austin',
        'Chicago',
        'Kansas',
        'Raleigh',
      ];


      LandingScreenViewModel landingScreenViewModel = LandingScreenViewModel();

      landingScreenViewModel.duplicateItems = duplicateItems;

      // Test case 1: Matching query
      landingScreenViewModel.filterSearchResults('Chic');
      expect(landingScreenViewModel.items, ['Chicago']);

      // Test case 2: Non-matching query
      landingScreenViewModel.filterSearchResults('London');
      expect(landingScreenViewModel.items, []);

      // Test case 3: Empty query
      landingScreenViewModel.filterSearchResults('');
      expect(landingScreenViewModel.items, duplicateItems);
    });
  });
}












