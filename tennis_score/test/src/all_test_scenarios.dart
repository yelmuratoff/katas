part of '../main.dart';

/// `allTestScenarios` is a list of test scenarios.
const List<TennisScenario> allTestScenarios = [
  TennisScenario(0, 0, Scenarios.initial),
  TennisScenario(1, 1, Scenarios.fifteenAll),
  TennisScenario(2, 2, Scenarios.thirtyAll),
  TennisScenario(3, 3, Scenarios.deuce),
  TennisScenario(4, 4, Scenarios.deuce),
  TennisScenario(1, 0, Scenarios.fifteenLove),
  TennisScenario(0, 1, Scenarios.loveFifteen),
  TennisScenario(2, 0, Scenarios.thirtyLove),
  TennisScenario(0, 2, Scenarios.loveThirty),
  TennisScenario(3, 0, Scenarios.fortyLove),
  TennisScenario(0, 3, Scenarios.loveForty),
  TennisScenario(4, 0, Scenarios.winForFirstPlayer),
  TennisScenario(0, 4, Scenarios.winForSecondPlayer),
  TennisScenario(2, 1, Scenarios.thirtyFifteen),
  TennisScenario(1, 2, Scenarios.fifteenThirty),
  TennisScenario(3, 1, Scenarios.fortyFifteen),
  TennisScenario(1, 3, Scenarios.fifteenForty),
  TennisScenario(4, 1, Scenarios.winForFirstPlayer),
  TennisScenario(1, 4, Scenarios.winForSecondPlayer),
  TennisScenario(3, 2, Scenarios.fortyThirty),
  TennisScenario(2, 3, Scenarios.thirtyForty),
  TennisScenario(4, 2, Scenarios.winForFirstPlayer),
  TennisScenario(2, 4, Scenarios.winForSecondPlayer),
  TennisScenario(4, 3, Scenarios.advantageFirstPlayer),
  TennisScenario(3, 4, Scenarios.advantageSecondPlayer),
  TennisScenario(5, 4, Scenarios.advantageFirstPlayer),
  TennisScenario(4, 5, Scenarios.advantageSecondPlayer),
  TennisScenario(15, 14, Scenarios.advantageFirstPlayer),
  TennisScenario(14, 15, Scenarios.advantageSecondPlayer),
  TennisScenario(6, 4, Scenarios.winForFirstPlayer),
  TennisScenario(4, 6, Scenarios.winForSecondPlayer),
  TennisScenario(16, 14, Scenarios.winForFirstPlayer),
  TennisScenario(14, 16, Scenarios.winForSecondPlayer),
];
