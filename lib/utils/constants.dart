import 'package:flutter/material.dart';

const appName = "PlantIp";
const appDesc = "All New Plant Recognition";

const baseUrl =
    'http://plantip.hdgroupofcompanies.com'; //NOTE: Do not end base url with Slash (/)
const mDomainUrl = '$baseUrl/wp-json/';
const ConsumerKey = 'ck_3f17ec580690f8437fe97b0b730a28e63dea6b03';
const ConsumerSecret = 'cs_89b04014364101d352b2b06ac015265577ba01b2';
const mOneSignalAppId = 'f77e1426-4f60-427b-9800-b9a856a9f144';

class PaymentKeys {
  final String razorKey = 'rzp_test_ij8gynt7YSthCK';
  final String payStackPublicKey = "";
  final String razorPayDescription = "";
}

const BANNER_AD_ID_ANDROID = "ADD YOUR BANNER_AD_ID_ANDROID";
const BANNER_AD_ID_IOS = "ADD YOUR BANNER_AD_ID_IOS";
const INTERSTITIAL_AD_ID_ANDROID = "ADD YOUR INTERSTITIAL_AD_ID_ANDROID";
const INTERSTITIAL_AD_ID_IOS = "ADD YOUR INTERSTITIAL_AD_ID_IOS";

const ENABLE_ADS = false;

const IS_RAZORPAY = false;
const IS_PAY_STACK = false;

const PAYMENT_METHOD_NATIVE = "native";

bool ENABLE_APPLE_LOGIN = false;
PaymentKeys paymentKeys = PaymentKeys();

class DefaultValues {
  final String defaultLanguage = "en";
}

DefaultValues defaultValues = DefaultValues();

const LoginTypeApp = 'app';
const LoginTypeGoogle = 'google';
const LoginTypeOTP = 'otp';
const LoginTypeApple = 'apple';

const COMPLETED = "completed";
const REFUNDED = "refunded";
const CANCELED = "cancelled";
const TRASH = "trash";
const FAILED = "failed";
const SUCCESS = 'Success';

class SharedPref {
  final String selectedLanguage = "selectedLanguage";
  final String isRemember = "IsRemember";
  final String isFirstTime = "isFirstTime";
  final String appThemeMode = "appThemeMode";

  ///User
  final String userPassword = "userPassword";
  final String userPhotoUrl = "userPhotoUrl";
  final String userId = "userId";
  final String isLoggedIn = "isLoggedIn";
  final String firstName = "firstName";
  final String lastName = "lastName";
  final String userEmail = "userEmail";
  final String userName = "userName";
  final String apiToken = "apiToken";
  final String wishlistData = "wishlistData";
  final String cartItemList = "cartItemList";
  final String billingAddress = "billingAddress";
  final String shippingAddress = "shippingAddress";

  final String contact = "contact";
  final String copyrightText = "copyrightText";
  final String facebook = "facebook";
  final String instagram = "instagram";
  final String privacyPolicy = "privacyPolicy";
  final String refundPolicy = "refundPolicy";
  final String shippingPolicy = "shippingPolicy";
  final String termCondition = "termCondition";
  final String twitter = "twitter";
  final String websiteUrl = "websiteUrl";
  final String whatsapp = "whatsapp";
  final String appLang = "appLang";
  final String currencySymbol = "currencySymbol";
  final String enableCustomDashboard = "enableCustomDashboard";
  final String paymentMethod = "paymentMethod";

  final String isSocial = "isSocial";
}

SharedPref sharedPref = SharedPref();
const cartUpdate = "cartUpdate";
const wishListUpdate = "wishListUpdate";

class AppThemeMode {
  final int themeModeLight = 1;
  final int themeModeDark = 2;
  final int themeModeSystem = 0;
}

const VideoTypeCustom = 'custom_url';
const VideoTypeYouTube = 'youtube';
const VideoTypeIFrame = 'iframe';

const WISHLIST_ITEM_LIST = 'WISHLIST_ITEM_LIST';
const CART_ITEM_LIST = 'CART_ITEM_LIST';

AppThemeMode appThemeMode = AppThemeMode();
const DASHBOARD_ITEMS = 6;
const appBarTextSize = 22;


const kMain = Color(0xff00ad59);
const kAccent = Color(0xff1ca800);
const kSecondary = Color(0xff626463);
const kWhite = Color(0xffffffff);
