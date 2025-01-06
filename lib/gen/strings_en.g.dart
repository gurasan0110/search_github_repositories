///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get publicArchive => 'Public archive';
	String updatedOn({required Object updatedAt}) => 'Updated on ${updatedAt}';
	String get searchRepositories => 'Search repositories';
	String get yourSearchDidNotMatchAnyRepositories => 'Your search did not match any repositories';
	String get bestMatch => 'Best match';
	String get mostStars => 'Most stars';
	String get fewestStars => 'Fewest stars';
	String get mostForks => 'Most forks';
	String get fewestForks => 'Fewest forks';
	String get recentlyUpdated => 'Recently updated';
	String get leastRecentlyUpdated => 'Least recently updated';
	String get updatedAtPattern => 'MMM d, y';
	String results({required Object totalCount}) => '${totalCount} results';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'publicArchive': return 'Public archive';
			case 'updatedOn': return ({required Object updatedAt}) => 'Updated on ${updatedAt}';
			case 'searchRepositories': return 'Search repositories';
			case 'yourSearchDidNotMatchAnyRepositories': return 'Your search did not match any repositories';
			case 'bestMatch': return 'Best match';
			case 'mostStars': return 'Most stars';
			case 'fewestStars': return 'Fewest stars';
			case 'mostForks': return 'Most forks';
			case 'fewestForks': return 'Fewest forks';
			case 'recentlyUpdated': return 'Recently updated';
			case 'leastRecentlyUpdated': return 'Least recently updated';
			case 'updatedAtPattern': return 'MMM d, y';
			case 'results': return ({required Object totalCount}) => '${totalCount} results';
			default: return null;
		}
	}
}

