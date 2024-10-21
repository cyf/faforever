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
class TranslationsZh implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZh _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomePageZh homePage = _TranslationsHomePageZh._(_root);
	@override late final _TranslationsButtonsZh buttons = _TranslationsButtonsZh._(_root);
	@override late final _TranslationsDialogsZh dialogs = _TranslationsDialogsZh._(_root);
	@override Map<String, String> get locales => {
		'en': 'English',
		'zh': '中文',
	};
}

// Path: homePage
class _TranslationsHomePageZh implements TranslationsHomePageEn {
	_TranslationsHomePageZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'FaForever';
	@override String get imageDescription => '请上传图片';
	@override String get description => '本app不会上传任何图片到服务器, 所有操作均在本地完成';
	@override String get textLabel => '文本';
	@override String get textLabelDescription => '文本会以水印添加到图片上';
	@override String get textValidator => '请输入文本.';
	@override String get textInput => '此证件仅用于办理xx业务, 其他用途无效';
	@override String get colorLabel => '颜色';
	@override String get colorValidator => '请选择颜色.';
	@override String get transparencyLabel => '透明度';
	@override String get preview => '预览';
	@override String get save => '保存';
}

// Path: buttons
class _TranslationsButtonsZh implements TranslationsButtonsEn {
	_TranslationsButtonsZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get agree => '同意';
	@override String get cancel => '再想想';
}

// Path: dialogs
class _TranslationsDialogsZh implements TranslationsDialogsEn {
	_TranslationsDialogsZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDialogsExitConfirmZh exitConfirm = _TranslationsDialogsExitConfirmZh._(_root);
	@override late final _TranslationsDialogsLicenseDialogZh licenseDialog = _TranslationsDialogsLicenseDialogZh._(_root);
}

// Path: dialogs.exitConfirm
class _TranslationsDialogsExitConfirmZh implements TranslationsDialogsExitConfirmEn {
	_TranslationsDialogsExitConfirmZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get exit => '退出';
	@override String get cancel => '取消';
	@override String get title => '关闭确认';
	@override String get description => '您确定要关闭此窗口吗?';
}

// Path: dialogs.licenseDialog
class _TranslationsDialogsLicenseDialogZh implements TranslationsDialogsLicenseDialogEn {
	_TranslationsDialogsLicenseDialogZh._(this._root);

	final TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get licenseDialogTitle => '隐私条款';
	@override String get licenseDialogContentContent => 'FaForever 非常重视你的隐私保护和个人信息保护.';
	@override String get licenseDialogContentTip => '以下是该APP所需的权限列表:';
	@override String get licenseDialogContentPrefix => '在使用APP服务前，请认真阅读 ';
	@override String get licenseDialogContentUserAgreement => '《隐私政策》';
	@override String get licenseDialogContentAnd => '和';
	@override String get licenseDialogContentPrivacyAgreement => '《用户服务协议》';
	@override String get licenseDialogContentSuffix => ', 你同意并接受全部条款后开始使用我们的服务.';
	@override List<String> get iosPermissions => [
		'为了让您上传图片, FaForever 需要访问您的照片. (NSPhotoLibraryUsageDescription)',
	];
	@override List<String> get androidPermissions => [
		'为了使用 Firebase Analytics 服务, FaForever 需要访问您的互联网. (android.permission.INTERNET)',
		'为了让您上传图片, FaForever 需要访问您的存储. (android.permission.READ_EXTERNAL_STORAGE)',
		'为了让您保存图片, FaForever 需要访问您的存储. (android.permission.WRITE_EXTERNAL_STORAGE)',
		'为了让您上传图片, FaForever 需要访问您的照片. (android.permission.READ_MEDIA_IMAGES)',
	];
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'homePage.title': return 'FaForever';
			case 'homePage.imageDescription': return '请上传图片';
			case 'homePage.description': return '本app不会上传任何图片到服务器, 所有操作均在本地完成';
			case 'homePage.textLabel': return '文本';
			case 'homePage.textLabelDescription': return '文本会以水印添加到图片上';
			case 'homePage.textValidator': return '请输入文本.';
			case 'homePage.textInput': return '此证件仅用于办理xx业务, 其他用途无效';
			case 'homePage.colorLabel': return '颜色';
			case 'homePage.colorValidator': return '请选择颜色.';
			case 'homePage.transparencyLabel': return '透明度';
			case 'homePage.preview': return '预览';
			case 'homePage.save': return '保存';
			case 'buttons.agree': return '同意';
			case 'buttons.cancel': return '再想想';
			case 'dialogs.exitConfirm.exit': return '退出';
			case 'dialogs.exitConfirm.cancel': return '取消';
			case 'dialogs.exitConfirm.title': return '关闭确认';
			case 'dialogs.exitConfirm.description': return '您确定要关闭此窗口吗?';
			case 'dialogs.licenseDialog.licenseDialogTitle': return '隐私条款';
			case 'dialogs.licenseDialog.licenseDialogContentContent': return 'FaForever 非常重视你的隐私保护和个人信息保护.';
			case 'dialogs.licenseDialog.licenseDialogContentTip': return '以下是该APP所需的权限列表:';
			case 'dialogs.licenseDialog.licenseDialogContentPrefix': return '在使用APP服务前，请认真阅读 ';
			case 'dialogs.licenseDialog.licenseDialogContentUserAgreement': return '《隐私政策》';
			case 'dialogs.licenseDialog.licenseDialogContentAnd': return '和';
			case 'dialogs.licenseDialog.licenseDialogContentPrivacyAgreement': return '《用户服务协议》';
			case 'dialogs.licenseDialog.licenseDialogContentSuffix': return ', 你同意并接受全部条款后开始使用我们的服务.';
			case 'dialogs.licenseDialog.iosPermissions.0': return '为了让您上传图片, FaForever 需要访问您的照片. (NSPhotoLibraryUsageDescription)';
			case 'dialogs.licenseDialog.androidPermissions.0': return '为了使用 Firebase Analytics 服务, FaForever 需要访问您的互联网. (android.permission.INTERNET)';
			case 'dialogs.licenseDialog.androidPermissions.1': return '为了让您上传图片, FaForever 需要访问您的存储. (android.permission.READ_EXTERNAL_STORAGE)';
			case 'dialogs.licenseDialog.androidPermissions.2': return '为了让您保存图片, FaForever 需要访问您的存储. (android.permission.WRITE_EXTERNAL_STORAGE)';
			case 'dialogs.licenseDialog.androidPermissions.3': return '为了让您上传图片, FaForever 需要访问您的照片. (android.permission.READ_MEDIA_IMAGES)';
			case 'locales.en': return 'English';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

