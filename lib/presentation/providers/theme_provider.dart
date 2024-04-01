import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fbo_demo_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);
final isDarkmodeProvider = StateProvider((ref) => false);
final selectedColorProvider = StateProvider((ref) => 0);
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
