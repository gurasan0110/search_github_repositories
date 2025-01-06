///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	// Translations
	@override String get publicArchive => '公開アーカイブ';
	@override String updatedOn({required Object updatedAt}) => '${updatedAt}に更新';
	@override String get searchRepositories => 'リポジトリを検索';
	@override String get yourSearchDidNotMatchAnyRepositories => '検索結果はどのリポジトリにも一致しませんでした';
	@override String get bestMatch => '最適な一致';
	@override String get mostStars => 'スター数が多い順';
	@override String get fewestStars => 'スター数が少ない順';
	@override String get mostForks => 'フォーク数が多い順';
	@override String get fewestForks => 'フォーク数が少ない順';
	@override String get recentlyUpdated => '更新日時が新しい順';
	@override String get leastRecentlyUpdated => '更新日時が古い順';
	@override String get updatedAtPattern => 'y年M月d日';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'publicArchive': return '公開アーカイブ';
			case 'updatedOn': return ({required Object updatedAt}) => '${updatedAt}に更新';
			case 'searchRepositories': return 'リポジトリを検索';
			case 'yourSearchDidNotMatchAnyRepositories': return '検索結果はどのリポジトリにも一致しませんでした';
			case 'bestMatch': return '最適な一致';
			case 'mostStars': return 'スター数が多い順';
			case 'fewestStars': return 'スター数が少ない順';
			case 'mostForks': return 'フォーク数が多い順';
			case 'fewestForks': return 'フォーク数が少ない順';
			case 'recentlyUpdated': return '更新日時が新しい順';
			case 'leastRecentlyUpdated': return '更新日時が古い順';
			case 'updatedAtPattern': return 'y年M月d日';
			default: return null;
		}
	}
}

