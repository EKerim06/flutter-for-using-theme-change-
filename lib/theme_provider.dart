// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier() : super(ThemeState());

  void isswicth({bool? value}) {
    if (value != null) {
      state = state.copyWith(isSwitchcontrol: value);
      value
          ? state = state.copyWith(selectedTheme: ThemeData.dark())
          : state = state.copyWith(selectedTheme: ThemeData.light());
    } else {
      state = state.copyWith(isSwitchcontrol: false);
      state = state.copyWith(selectedTheme: ThemeData.light());
    }
  }

  void chancingTheme() {}
}

class ThemeState {
  ThemeData? selectedTheme;
  bool? isSwitchcontrol;
  ThemeState({
    this.selectedTheme,
    this.isSwitchcontrol,
  });

  ThemeState copyWith({
    ThemeData? selectedTheme,
    bool? isSwitchcontrol,
  }) {
    return ThemeState(
      selectedTheme: selectedTheme ?? this.selectedTheme,
      isSwitchcontrol: isSwitchcontrol ?? this.isSwitchcontrol,
    );
  }
}
