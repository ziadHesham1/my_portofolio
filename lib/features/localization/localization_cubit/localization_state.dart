part of 'localization_cubit.dart';

enum AppLanguage {
  arabic,
  english;

  Locale get locale => switch (this) {
        AppLanguage.arabic => const Locale('ar', "EG"),
        AppLanguage.english => const Locale('en', "US"),
      };

  static final List<Locale> supportedLocales = [arabic.locale, english.locale];

  TextDirection get textDirection => switch (this) {
        AppLanguage.arabic => TextDirection.rtl,
        AppLanguage.english => TextDirection.ltr,
      };

  String get translated => switch (this) {
        AppLanguage.arabic => 'العربية',
        AppLanguage.english => 'English',
      };
}

extension LocalizationLangExtension on Locale {
  String get translated => switch (languageCode) {
        "ar" => 'العربية',
        "en" => 'English',
        _ => 'English',
      };
}

// the default locale that the app will start with
Locale defaultLocale = AppLanguage.english.locale;

class LocalizationState extends Equatable {
  final Locale locale;

  const LocalizationState(this.locale);

  factory LocalizationState.init() {
    return LocalizationState(defaultLocale);
  }

  LocalizationState updateLocale(Locale locale) {
    return LocalizationState(locale);
  }

  @override
  List<Object> get props => [locale];
}
