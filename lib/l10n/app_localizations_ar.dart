// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'شوبيفاي';

  @override
  String get welcomeText => 'هيا نتسوق';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get createNewAccount => 'إنشاء حساب جديد';

  @override
  String get joinToday => 'انضم إلى شوبيفاي اليوم';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get fullNameLabel => 'ادخل الاسم الكامل';

  @override
  String get emailLabel => 'ادخل البريد الإلكتروني';

  @override
  String get passwordLabel => 'ادخل كلمة المرور';

  @override
  String get confirmPasswordLabel => 'ادخل تأكيد كلمة المرور';

  @override
  String get errorNameRequired => 'الاسم الكامل مطلوب';

  @override
  String get errorNameUppercase => 'يجب أن يبدأ الاسم بحرف كبير';

  @override
  String get errorEmailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get errorEmailInvalid => 'يجب أن يحتوي البريد الإلكتروني على @';

  @override
  String get errorPasswordRequired => 'كلمة المرور مطلوبة';

  @override
  String get errorPasswordShort => 'يجب ألا تقل كلمة المرور عن 6 أحرف';

  @override
  String get errorConfirmRequired => 'يرجى تأكيد كلمة المرور';

  @override
  String get errorPasswordsMismatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get createAccount => 'إنشاء حساب جديد';

  @override
  String get success => 'تم بنجاح!';

  @override
  String get accountCreated => 'تم إنشاء الحساب بنجاح';

  @override
  String get close => 'إغلاق';

  @override
  String get welcomeBack => 'مرحبًا بعودتك';

  @override
  String get signInTo => 'سجل الدخول إلى شوبيفاي';

  @override
  String get welcome => 'اهلا!';

  @override
  String get accountSignedIn => 'تم تسجيل الدخول بنجاح';

  @override
  String get ourProducts => 'منتجاتنا';

  @override
  String get featuredProducts => 'المنتجات المميزة';

  @override
  String get shopCollection => 'تسوق مجموعتنا';

  @override
  String get hotOffers => 'العروض الساخنة';

  @override
  String get addToCart => 'تمت إضافة المنتج إلى السلة';

  @override
  String addedToCart(String product) {
    return 'تمت إضافة $product إلى السلة';
  }

  @override
  String get featured_t_shirts => 'تيشيرتات';

  @override
  String get featured_sweaters => 'سويترات';

  @override
  String get featured_jeans => 'بنطلونات جينز';

  @override
  String get product_beige_cardigan => 'كارديجان بيج';

  @override
  String get product_beige_sweater => 'سويتر بيج';

  @override
  String get product_black_bag => 'شنطة سوداء';

  @override
  String get product_beige_boots => 'حذاء بيج';

  @override
  String get product_tshirt => 'تيشيرت';

  @override
  String get product_jeans_jacket => 'جاكيت جينز';

  @override
  String get product_green_sweater => 'سويتر أخضر';

  @override
  String get product_brown_jacket => 'جاكيت بني';

  @override
  String get product_red_heels => 'كعب أحمر';

  @override
  String get product_shoes => 'حذاء';

  @override
  String get price_600 => '٦٠٠ جنيه';

  @override
  String get price_700 => '٧٠٠ جنيه';

  @override
  String get price_1000 => '١٠٠٠ جنيه';

  @override
  String get price_1200 => '١٢٠٠ جنيه';

  @override
  String get price_1600 => '١٦٠٠ جنيه';

  @override
  String get price_300 => '٣٠٠ جنيه';

  @override
  String get price_2000 => '٢٠٠٠ جنيه';

  @override
  String get offer_buy2get1 => 'اشتري ٢ واحصل على ١ مجانًا';

  @override
  String get offer_accessories => 'على الإكسسوارات المختارة';

  @override
  String get offer_buy1get50 => 'اشتري ١ واحصل على الثاني بخصم ٥٠٪';

  @override
  String get offer_heels => 'عرض لفترة محدودة على الكعوب';

  @override
  String get offer_50_tshirts => 'خصم ٥٠٪ على التيشيرتات';

  @override
  String get offer_tshirts => 'عرض لفترة محدودة على كل التيشيرتات';

  @override
  String get offer_bundle => 'عروض الباقات';

  @override
  String get offer_collection => 'وفر أكثر عند شراء المجموعة الكاملة';

  @override
  String get offer_free_shipping => 'توصيل مجاني في عطلة نهاية الأسبوع';

  @override
  String get offer_shipping => 'لا توجد رسوم توصيل للطلبات فوق ٥٠٠ جنيه';
}