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
	late final TranslationsHomePageEn homePage = TranslationsHomePageEn._(_root);
	late final TranslationsButtonsEn buttons = TranslationsButtonsEn._(_root);
	late final TranslationsDialogsEn dialogs = TranslationsDialogsEn._(_root);
	Map<String, String> get locales => {
		'en': 'English',
		'zh': '中文',
	};
}

// Path: homePage
class TranslationsHomePageEn {
	TranslationsHomePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'FaForever';
	String get imageDescription => 'Please upload pictures.';
	String get description => 'This app will not upload any pictures to the server, all operations are completed locally';
	String get textLabel => 'Text';
	String get textLabelDescription => 'Text will be added to the image as a watermark';
	String get textValidator => 'Please enter text.';
	String get textInput => 'This certificate is only used for handling xx business, and is invalid for other purposes.';
	String get colorLabel => 'Color';
	String get colorValidator => 'Please select a color.';
	String get transparencyLabel => 'Transparency';
	String get preview => 'Preview';
	String get save => 'Save';
}

// Path: buttons
class TranslationsButtonsEn {
	TranslationsButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get agree => 'Agree';
	String get cancel => 'Cancel';
}

// Path: dialogs
class TranslationsDialogsEn {
	TranslationsDialogsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDialogsExitConfirmEn exitConfirm = TranslationsDialogsExitConfirmEn._(_root);
	late final TranslationsDialogsLicenseDialogEn licenseDialog = TranslationsDialogsLicenseDialogEn._(_root);
}

// Path: dialogs.exitConfirm
class TranslationsDialogsExitConfirmEn {
	TranslationsDialogsExitConfirmEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get exit => 'Exit';
	String get cancel => 'Cancel';
	String get title => 'Close confirmation';
	String get description => 'Are you sure you want to close this window?';
}

// Path: dialogs.licenseDialog
class TranslationsDialogsLicenseDialogEn {
	TranslationsDialogsLicenseDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get licenseDialogTitle => 'Terms and Conditions';
	String get licenseDialogContentContent => 'Protecting user\'s privacy and personal information is a fundamental principle of FaForever.';
	String get licenseDialogContentTip => 'Below is a list of permissions required by this APP:';
	String get licenseDialogContentPrefix => 'Before you use this APP\'s services, please carefully read and agree to the ';
	String get licenseDialogContentUserAgreement => 'User Agreement';
	String get licenseDialogContentAnd => ' and ';
	String get licenseDialogContentPrivacyAgreement => 'Privacy Agreement';
	String get licenseDialogContentSuffix => ', start using our services after you agree and accept all terms.';
	List<String> get iosPermissions => [
		'For you to upload pictures, FaForever needs access to your Photos. (NSPhotoLibraryUsageDescription)',
	];
	List<String> get androidPermissions => [
		'In order to use the Firebase Analytics Service, FaForever needs access to your Internet. (android.permission.INTERNET)',
		'For you to upload pictures, FaForever needs access to your Storage. (android.permission.READ_EXTERNAL_STORAGE)',
		'For you to save pictures, FaForever needs access to your Storage. (android.permission.WRITE_EXTERNAL_STORAGE)',
		'For you to upload pictures, FaForever needs access to your Photos. (android.permission.READ_MEDIA_IMAGES)',
	];
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'homePage.title': return 'FaForever';
			case 'homePage.imageDescription': return 'Please upload pictures.';
			case 'homePage.description': return 'This app will not upload any pictures to the server, all operations are completed locally';
			case 'homePage.textLabel': return 'Text';
			case 'homePage.textLabelDescription': return 'Text will be added to the image as a watermark';
			case 'homePage.textValidator': return 'Please enter text.';
			case 'homePage.textInput': return 'This certificate is only used for handling xx business, and is invalid for other purposes.';
			case 'homePage.colorLabel': return 'Color';
			case 'homePage.colorValidator': return 'Please select a color.';
			case 'homePage.transparencyLabel': return 'Transparency';
			case 'homePage.preview': return 'Preview';
			case 'homePage.save': return 'Save';
			case 'buttons.agree': return 'Agree';
			case 'buttons.cancel': return 'Cancel';
			case 'dialogs.exitConfirm.exit': return 'Exit';
			case 'dialogs.exitConfirm.cancel': return 'Cancel';
			case 'dialogs.exitConfirm.title': return 'Close confirmation';
			case 'dialogs.exitConfirm.description': return 'Are you sure you want to close this window?';
			case 'dialogs.licenseDialog.licenseDialogTitle': return 'Terms and Conditions';
			case 'dialogs.licenseDialog.licenseDialogContentContent': return 'Protecting user\'s privacy and personal information is a fundamental principle of FaForever.';
			case 'dialogs.licenseDialog.licenseDialogContentTip': return 'Below is a list of permissions required by this APP:';
			case 'dialogs.licenseDialog.licenseDialogContentPrefix': return 'Before you use this APP\'s services, please carefully read and agree to the ';
			case 'dialogs.licenseDialog.licenseDialogContentUserAgreement': return 'User Agreement';
			case 'dialogs.licenseDialog.licenseDialogContentAnd': return ' and ';
			case 'dialogs.licenseDialog.licenseDialogContentPrivacyAgreement': return 'Privacy Agreement';
			case 'dialogs.licenseDialog.licenseDialogContentSuffix': return ', start using our services after you agree and accept all terms.';
			case 'dialogs.licenseDialog.iosPermissions.0': return 'For you to upload pictures, FaForever needs access to your Photos. (NSPhotoLibraryUsageDescription)';
			case 'dialogs.licenseDialog.androidPermissions.0': return 'In order to use the Firebase Analytics Service, FaForever needs access to your Internet. (android.permission.INTERNET)';
			case 'dialogs.licenseDialog.androidPermissions.1': return 'For you to upload pictures, FaForever needs access to your Storage. (android.permission.READ_EXTERNAL_STORAGE)';
			case 'dialogs.licenseDialog.androidPermissions.2': return 'For you to save pictures, FaForever needs access to your Storage. (android.permission.WRITE_EXTERNAL_STORAGE)';
			case 'dialogs.licenseDialog.androidPermissions.3': return 'For you to upload pictures, FaForever needs access to your Photos. (android.permission.READ_MEDIA_IMAGES)';
			case 'locales.en': return 'English';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

