// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier() : super(ThemeState());

  void changeTheme(bool check) {
    if (!check) {
      state = state.copyWith(themeData: ThemeData.light());
    } else {
      state = state.copyWith(themeData: ThemeData.dark());
    }
  }

  void changeSwicthwithTheme(bool value) {
    state = state.copyWith(isSwitch: value);
  }
}

class ThemeState {
  ThemeData? themeData;
  bool? isSwitch;

  ThemeState({
    this.themeData,
    this.isSwitch = false,
  });

  ThemeState copyWith({
    ThemeData? themeData,
    bool? isSwitch,
  }) {
    return ThemeState(
      themeData: themeData ?? this.themeData,
      isSwitch: isSwitch ?? this.isSwitch,
    );
  }
}
