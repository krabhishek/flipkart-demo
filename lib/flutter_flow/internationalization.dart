import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'bn', 'hi', 'te', 'kn', 'zh_Hans'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String? enText = '',
    String? bnText = '',
    String? hiText = '',
    String? teText = '',
    String? knText = '',
    String? zh_HansText = '',
  }) =>
      [enText, bnText, hiText, teText, knText, zh_HansText][languageIndex] ??
      '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'gazdpspv': {
      'en': 'Login',
      'bn': 'প্রবেশ করুন',
      'hi': 'लॉग इन करें',
      'kn': 'ಲಾಗಿನ್ ಮಾಡಿ',
      'te': 'ప్రవేశించండి',
      'zh_Hans': '登录',
    },
    '9c27t1zn': {
      'en': 'Email',
      'bn': 'ইমেইল',
      'hi': 'ईमेल',
      'kn': 'ಇಮೇಲ್',
      'te': 'ఇమెయిల్',
      'zh_Hans': '电子邮件',
    },
    '1701ppoa': {
      'en': 'Enter your email address',
      'bn': 'তোমার ই - মেইল ঠিকানা লেখো',
      'hi': 'अपना ईमेल पता दर्ज करें',
      'kn': 'ನಿಮ್ಮ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ',
      'te': 'మీ ఈ మెయిల్ వివరాలని నమోదు చేయండి',
      'zh_Hans': '输入你的电子邮箱地址',
    },
    'rdwrah0w': {
      'en': 'Password',
      'bn': 'পাসওয়ার্ড',
      'hi': 'पासवर्ड',
      'kn': 'ಗುಪ್ತಪದ',
      'te': 'పాస్వర్డ్',
      'zh_Hans': '密码',
    },
    'vojwfvdc': {
      'en': 'Enter your password',
      'bn': 'আপনার পাসওয়ার্ড লিখুন',
      'hi': 'अपना पासवर्ड डालें',
      'kn': 'ನಿಮ್ಮ ಗುಪ್ತಪದವನ್ನು ನಮೂದಿಸಿ',
      'te': 'మీ పాస్వర్డ్ ని నమోదుచేయండి',
      'zh_Hans': '输入您的密码',
    },
    'vojr7yvh': {
      'en': 'Login',
      'bn': 'প্রবেশ করুন',
      'hi': 'लॉग इन करें',
      'kn': 'ಲಾಗಿನ್ ಮಾಡಿ',
      'te': 'ప్రవేశించండి',
      'zh_Hans': '登录',
    },
    'lhod0mxe': {
      'en': 'Sign Up',
      'bn': 'নিবন্ধন করুন',
      'hi': 'साइन अप करें',
      'kn': 'ಸೈನ್ ಅಪ್ ಮಾಡಿ',
      'te': 'చేరడం',
      'zh_Hans': '报名',
    },
    'bobmcksg': {
      'en': 'Email',
      'bn': 'ইমেইল',
      'hi': 'ईमेल',
      'kn': 'ಇಮೇಲ್',
      'te': 'ఇమెయిల్',
      'zh_Hans': '电子邮件',
    },
    'abc00xzc': {
      'en': 'Enter your email address',
      'bn': 'তোমার ই - মেইল ঠিকানা লেখো',
      'hi': 'अपना ईमेल पता दर्ज करें',
      'kn': 'ನಿಮ್ಮ ಇಮೇಲ್ ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ',
      'te': 'మీ ఈ మెయిల్ వివరాలని నమోదు చేయండి',
      'zh_Hans': '输入你的电子邮箱地址',
    },
    'vqcl1a2e': {
      'en': 'Password',
      'bn': 'পাসওয়ার্ড',
      'hi': 'पासवर्ड',
      'kn': 'ಗುಪ್ತಪದ',
      'te': 'పాస్వర్డ్',
      'zh_Hans': '密码',
    },
    'p13csq6h': {
      'en': 'Enter your password',
      'bn': 'আপনার পাসওয়ার্ড লিখুন',
      'hi': 'अपना पासवर्ड डालें',
      'kn': 'ನಿಮ್ಮ ಗುಪ್ತಪದವನ್ನು ನಮೂದಿಸಿ',
      'te': 'మీ పాస్వర్డ్ ని నమోదుచేయండి',
      'zh_Hans': '输入您的密码',
    },
    'ptot6f2h': {
      'en': 'Confim Password',
      'bn': 'পাসওয়ার্ড কনফার্ম করুন',
      'hi': 'पासवर्ड की पुष्टि करें',
      'kn': 'ಪಾಸ್ವರ್ಡ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ',
      'te': 'పాస్‌వర్డ్‌ని నిర్ధారించండి',
      'zh_Hans': '确认密码',
    },
    'grbagpwk': {
      'en': 'Confirm your password',
      'bn': 'আপনার পাসওয়ার্ড নিশ্চিত',
      'hi': 'अपने पासवर्ड की पुष्टि करें',
      'kn': 'ನಿಮ್ಮ ಗುಪ್ತಪದವನ್ನು ಖಚಿತಪಡಿಸಿ',
      'te': 'మీ గుత్త పదమును ధృవీకరించండి',
      'zh_Hans': '确认你的密码',
    },
    'xuewa2h6': {
      'en': 'Sign Up',
      'bn': 'নিবন্ধন করুন',
      'hi': 'साइन अप करें',
      'kn': 'ಸೈನ್ ಅಪ್ ಮಾಡಿ',
      'te': 'చేరడం',
      'zh_Hans': '报名',
    },
    'pnurwpcg': {
      'en': 'Welcome',
      'bn': 'স্বাগত',
      'hi': 'स्वागत',
      'kn': 'ಸ್ವಾಗತ',
      'te': 'స్వాగతం',
      'zh_Hans': '欢迎',
    },
    'b515qbl5': {
      'en': 'Home',
      'bn': 'বাড়ি',
      'hi': 'घर',
      'kn': 'ಮುಖಪುಟ',
      'te': 'హోమ్',
      'zh_Hans': '家',
    },
  },
  // WelcomePage
  {
    '29nqe4yi': {
      'en': 'Search for Books',
      'bn': 'বই অনুসন্ধান করুন',
      'hi': 'पुस्तकें खोजें',
      'kn': 'ಪುಸ್ತಕಗಳಿಗಾಗಿ ಹುಡುಕಿ',
      'te': 'పుస్తకాల కోసం శోధించండి',
      'zh_Hans': '搜索书籍',
    },
    'kg28k9wg': {
      'en': 'Find amazing classic books in our library.',
      'bn': 'আমাদের লাইব্রেরিতে আশ্চর্যজনক ক্লাসিক বই খুঁজুন।',
      'hi': 'हमारे पुस्तकालय में अद्भुत क्लासिक किताबें खोजें।',
      'kn': 'ನಮ್ಮ ಲೈಬ್ರರಿಯಲ್ಲಿ ಅದ್ಭುತವಾದ ಕ್ಲಾಸಿಕ್ ಪುಸ್ತಕಗಳನ್ನು ಹುಡುಕಿ.',
      'te': 'మా లైబ్రరీలో అద్భుతమైన క్లాసిక్ పుస్తకాలను కనుగొనండి.',
      'zh_Hans': '在我们的图书馆中找到令人惊叹的经典书籍。',
    },
    'ak9rstdg': {
      'en': 'Purchase Books',
      'bn': 'বই কিনুন',
      'hi': 'पुस्तकें खरीदें',
      'kn': 'ಪುಸ್ತಕಗಳನ್ನು ಖರೀದಿಸಿ',
      'te': 'పుస్తకాలు కొనండి',
      'zh_Hans': '购买书籍',
    },
    'ovuxjiuy': {
      'en': 'Buy and view all your favorite books you find in this library.',
      'bn': 'এই লাইব্রেরিতে পাওয়া আপনার পছন্দের সব বই কিনুন এবং দেখুন।',
      'hi':
          'अपनी सभी पसंदीदा पुस्तकें खरीदें और देखें जो आपको इस पुस्तकालय में मिलती हैं।',
      'kn':
          'ಈ ಲೈಬ್ರರಿಯಲ್ಲಿ ನೀವು ಕಾಣುವ ನಿಮ್ಮ ಎಲ್ಲಾ ಮೆಚ್ಚಿನ ಪುಸ್ತಕಗಳನ್ನು ಖರೀದಿಸಿ ಮತ್ತು ವೀಕ್ಷಿಸಿ.',
      'te':
          'ఈ లైబ్రరీలో మీకు ఇష్టమైన అన్ని పుస్తకాలను కొనుగోలు చేయండి మరియు వీక్షించండి.',
      'zh_Hans': '购买并查看您在此图书馆中找到的所有您喜爱的书籍。',
    },
    'nmd3jf9d': {
      'en': 'Review Purchases',
      'bn': 'ক্রয় পর্যালোচনা করুন',
      'hi': 'खरीदारी की समीक्षा करें',
      'kn': 'ಖರೀದಿಗಳನ್ನು ಪರಿಶೀಲಿಸಿ',
      'te': 'కొనుగోళ్లను సమీక్షించండి',
      'zh_Hans': '审查购买',
    },
    '9bilnrl7': {
      'en':
          'Keep track of all your purchases that you have made, want to trade books in? Go ahead and list them for exchange.',
      'bn':
          'আপনার করা সমস্ত কেনাকাটার ট্র্যাক রাখুন, বই ব্যবসা করতে চান? এগিয়ে যান এবং বিনিময়ের জন্য তাদের তালিকা.',
      'hi':
          'अपनी सभी खरीदारी पर नज़र रखें जो आपने की हैं, पुस्तकों का व्यापार करना चाहते हैं? आगे बढ़ो और उन्हें विनिमय के लिए सूचीबद्ध करें।',
      'kn':
          'ನೀವು ಮಾಡಿದ ನಿಮ್ಮ ಎಲ್ಲಾ ಖರೀದಿಗಳನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ, ಪುಸ್ತಕಗಳನ್ನು ವ್ಯಾಪಾರ ಮಾಡಲು ಬಯಸುವಿರಾ? ಮುಂದುವರಿಯಿರಿ ಮತ್ತು ವಿನಿಮಯಕ್ಕಾಗಿ ಅವುಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡಿ.',
      'te':
          'మీరు చేసిన అన్ని కొనుగోళ్లను ట్రాక్ చేయండి, పుస్తకాలను వ్యాపారం చేయాలనుకుంటున్నారా? ముందుకు వెళ్లి వాటిని మార్పిడి కోసం జాబితా చేయండి.',
      'zh_Hans': '跟踪您购买的所有商品，想要换购书籍吗？继续列出它们以进行交换。',
    },
    'n5x2y4wa': {
      'en': 'Continue',
      'bn': 'চালিয়ে যান',
      'hi': 'जारी रखना',
      'kn': 'ಮುಂದುವರಿಸಿ',
      'te': 'కొనసాగించు',
      'zh_Hans': '继续',
    },
  },
  // Miscellaneous
  {
    'alv61cyu': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'qyrq26nc': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'p87akta8': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'y6e4sv3x': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'oez906cn': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    '4ss9yvns': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'jthz0qtu': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'oei5amj6': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    '3czlvnh1': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'zjafsb52': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'bh08fi4z': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'ztbg1bb6': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'mcz23db9': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'wsqrqg5z': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    '322upgd5': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    '60zax43v': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'ltmi1s93': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    '9ulwpaoe': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    'g4opop33': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
    '54e3muus': {
      'en': '',
      'bn': '',
      'hi': '',
      'kn': '',
      'te': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));
