import 'package:test/test.dart';
import 'package:trip_service/src/enums/trip_service_error_type.dart';
import 'package:trip_service/src/enums/unit_tests_error_type.dart';
import 'package:trip_service/src/models/user.dart';
import 'package:trip_service/trip_service.dart';

import 'test_trip_service.dart';

final _dummyUser = User();
late TripService _tripService;

void main() {
  group('TripService |', () {
    setUp(() {
      _tripService = TestableTripService();
    });

    test('Test getTripsByUser returns TripServiceErrorType.userNotLoggedIn exception', () async {
      try {
        await _tripService.getTripsByUser(_dummyUser);
      } catch (e) {
        expect(e, TripServiceErrorType.userNotLoggedIn);
      }
    });

    test('Test user with no friends', () async {
      _tripService.loggedInUser = User();

      final trips = await _tripService.getTripsByUser(_dummyUser);

      expect(trips, isEmpty);
    });

    test('Test friend with no trips', () async {
      try {
        final user = User();
        final friend = User();

        friend.addFriend(user);
        _tripService.loggedInUser = user;

        await _tripService.getTripsByUser(friend);
      } catch (e) {
        expect(e, UnitTestErrorType.dependendClassCallDuringUnitTest);
      }
    });
  });
}