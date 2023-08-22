import 'package:flutter_base_project/core/i10n/default_localization.dart';

class TrLocalization extends AppLocalizationLabel {
  const TrLocalization();

  @override
  final String lanCode = 'tr';
  @override
  final String localizationTitle = 'Türkçe';
  @override
  final String email = 'E-Posta';
  @override
  final String phone = 'Telefon';
  @override
  final String defaultErrorMessage = 'Hata oluştu. Lütfen daha sonra tekrar deneyiniz';
  @override
  final String noInternetErrorMessage = 'Lütfen internet bağlantınızı kontrol ediniz.';
  @override
  final String unauthorizedErrorMessage = 'Bu işlem için yetkiniz bulunmamaktadır.';
  @override
  final String serverErrorMessage = 'Sunucu kaynaklı bi hata oluştu. Lütfen daha sonra tekrar deneyiniz';
  @override
  final String closeBtnText = 'Kapat';
  @override
  final String cancelBtnText = 'İptal';
  @override
  final String saveBtnText = 'Kaydet';
  @override
  final String tryAgainBtnText = 'Tekrar Dene';
  @override
  final String noBtnText = 'Hayır';
  @override
  final String yesBtnText = 'Evet';
  @override
  final String enterEmailAddressReqExMessage = 'Eposta adresi giriniz.';
  @override
  final String enterValidEmailReqExMessage = 'Geçerli eposta adresi giriniz.';
  @override
  final String enterTelNoReqExMessage = 'Telefon numarası giriniz.';
  @override
  final String enterValidTelNoReqExMessage = 'Geçerli telefon numarası giriniz.';
  @override
  final String enterValidCodeReqExMessage = 'Geçerli kod giriniz.';
  @override
  final String enterNameReqExMessage = 'Ad giriniz.';
  @override
  final String enterValidNameReqExMessage = 'Geçerli ad giriniz.';
  @override
  final String enterSurnameReqExMessage = 'Soyadı giriniz.';
  @override
  final String enterValidSurnameReqExMessage = 'Geçerli Soyadı giriniz.';
  @override
  final String requiredFieldReqExMessage = 'Zorunlu alan.';
  @override
  final String enterValidCardNoReqExMessage = 'Geçerli kart numarası giriniz.';
  @override
  final String enterValidDatReqExMessage = 'Geçerli tarih girin.';
  @override
  final String enterValidPasswordReqExMessage = 'Geçerli şifre giriniz.';
  @override
  final String telNoTextFieldText = 'Cep Telefonunuz';
  @override
  final String unknownPageRouteMessageText = 'Route bulunamadı...';
  @override
  final Map<String, String> country = const {
    'AD': 'Andorra',
    'AE': 'Birleşik Arap Emirlikleri',
    'AF': 'Afganistan',
    'AG': 'Antigua ve Barbuda',
    'AI': 'Anguilla',
    'AL': 'Arnavutluk',
    'AM': 'Ermenistan',
    'AO': 'Angola',
    'AQ': 'Antarktika',
    'AR': 'Arjantin',
    'AS': 'Amerikan Samoası',
    'AT': 'Avusturya',
    'AU': 'Avustralya',
    'AW': 'Aruba',
    'AX': 'Åland Adaları',
    'AZ': 'Azerbaycan',
    'BA': 'Bosna Hersek',
    'BB': 'Barbados',
    'BD': 'Bangladeş',
    'BE': 'Belçika',
    'BF': 'Burkina Faso',
    'BG': 'Bulgaristan',
    'BH': 'Bahreyn',
    'BI': 'Burundi',
    'BJ': 'Benin',
    'BL': 'Saint Barthelemy',
    'BM': 'Bermuda',
    'BN': 'Brunei',
    'BO': 'Bolivya',
    'BQ': 'Karayip Hollanda',
    'BR': 'Brezilya',
    'BS': 'Bahamalar',
    'BT': 'Butan',
    'BV': 'Bouvet Adası',
    'BW': 'Botsvana',
    'BY': 'Beyaz Rusya',
    'BZ': 'Belize',
    'CA': 'Kanada',
    'CC': 'Cocos (Keeling) Adaları',
    'CD': 'Kongo - Kinşasa',
    'CF': 'Orta Afrika Cumhuriyeti',
    'CG': 'Kongo - Brazavil',
    'CH': 'İsviçre',
    'CI': 'Fildişi Sahili',
    'CK': 'Cook Adaları',
    'CL': 'Şili',
    'CM': 'Kamerun',
    'CN': 'Çin',
    'CO': 'Kolombiya',
    'CR': 'Kosta Rika',
    'CU': 'Küba',
    'CV': 'Cape Verde',
    'CW': 'Curaçao',
    'CX': 'Christmas Adası',
    'CY': 'Güney Kıbrıs Rum Kesimi',
    'CZ': 'Çek Cumhuriyeti',
    'DE': 'Almanya',
    'DJ': 'Cibuti',
    'DK': 'Danimarka',
    'DM': 'Dominika',
    'DO': 'Dominik Cumhuriyeti',
    'DZ': 'Cezayir',
    'EC': 'Ekvador',
    'EE': 'Estonya',
    'EG': 'Mısır',
    'EH': 'Batı Sahara',
    'ER': 'Eritre',
    'ES': 'İspanya',
    'ET': 'Etiyopya',
    'FI': 'Finlandiya',
    'FJ': 'Fiji',
    'FK': 'Falkland Adaları',
    'FM': 'Mikronezya',
    'FO': 'Faroe Adaları',
    'FR': 'Fransa',
    'GA': 'Gabon',
    'GB': 'Birleşik Krallık',
    'GD': 'Grenada',
    'GE': 'Gürcistan',
    'GF': 'Fransız Guyanası',
    'GG': 'Guernsey',
    'GH': 'Gana',
    'GI': 'Cebelitarık',
    'GL': 'Grönland',
    'GM': 'Gambiya',
    'GN': 'Gine',
    'GP': 'Guadalupe',
    'GQ': 'Ekvator Ginesi',
    'GR': 'Yunanistan',
    'GS': 'Güney Georgia ve Güney Sandwich Adaları',
    'GT': 'Guatemala',
    'GU': 'Guam',
    'GW': 'Gine-Bissau',
    'GY': 'Guyana',
    'HK': 'Çin Hong Kong ÖYB',
    'HM': 'Heard Adası ve McDonald Adaları',
    'HN': 'Honduras',
    'HR': 'Hırvatistan',
    'HT': 'Haiti',
    'HU': 'Macaristan',
    'ID': 'Endonezya',
    'IE': 'İrlanda',
    'IL': 'İsrail',
    'IM': 'Man Adası',
    'IN': 'Hindistan',
    'IO': 'Britanya Hint Okyanusu Toprakları',
    'IQ': 'Irak',
    'IR': 'İran',
    'IS': 'İzlanda',
    'IT': 'İtalya',
    'JE': 'Jersey',
    'JM': 'Jamaika',
    'JO': 'Ürdün',
    'JP': 'Japonya',
    'KE': 'Kenya',
    'KG': 'Kırgızistan',
    'KH': 'Kamboçya',
    'KI': 'Kiribati',
    'KM': 'Komorlar',
    'KN': 'Saint Kitts ve Nevis',
    'KP': 'Kuzey Kore',
    'KR': 'Güney Kore',
    'KW': 'Kuveyt',
    'KY': 'Cayman Adaları',
    'KZ': 'Kazakistan',
    'LA': 'Laos',
    'LB': 'Lübnan',
    'LC': 'Saint Lucia',
    'LI': 'Liechtenstein',
    'LK': 'Sri Lanka',
    'LR': 'Liberya',
    'LS': 'Lesoto',
    'LT': 'Litvanya',
    'LU': 'Lüksemburg',
    'LV': 'Letonya',
    'LY': 'Libya',
    'MA': 'Fas',
    'MC': 'Monako',
    'MD': 'Moldova',
    'ME': 'Karadağ',
    'MF': 'Saint Martin',
    'MG': 'Madagaskar',
    'MH': 'Marshall Adaları',
    'MK': 'Kuzey Makedonya',
    'ML': 'Mali',
    'MM': 'Myanmar (Burma)',
    'MN': 'Moğolistan',
    'MO': 'Çin Makao ÖYB',
    'MP': 'Kuzey Mariana Adaları',
    'MQ': 'Martinik',
    'MR': 'Moritanya',
    'MS': 'Montserrat',
    'MT': 'Malta',
    'MU': 'Mauritius',
    'MV': 'Maldivler',
    'MW': 'Malavi',
    'MX': 'Meksika',
    'MY': 'Malezya',
    'MZ': 'Mozambik',
    'NA': 'Namibya',
    'NC': 'Yeni Kaledonya',
    'NE': 'Nijer',
    'NF': 'Norfolk Adası',
    'NG': 'Nijerya',
    'NI': 'Nikaragua',
    'NL': 'Hollanda',
    'NO': 'Norveç',
    'NP': 'Nepal',
    'NR': 'Nauru',
    'NU': 'Niue',
    'NZ': 'Yeni Zelanda',
    'OM': 'Umman',
    'PA': 'Panama',
    'PE': 'Peru',
    'PF': 'Fransız Polinezyası',
    'PG': 'Papua Yeni Gine',
    'PH': 'Filipinler',
    'PK': 'Pakistan',
    'PL': 'Polonya',
    'PM': 'Saint Pierre ve Miquelon',
    'PN': 'Pitcairn Adaları',
    'PR': 'Porto Riko',
    'PS': 'Filistin Bölgeleri',
    'PT': 'Portekiz',
    'PW': 'Palau',
    'PY': 'Paraguay',
    'QA': 'Katar',
    'RE': 'Réunion',
    'RO': 'Romanya',
    'RS': 'Sırbistan',
    'RU': 'Rusya',
    'RW': 'Ruanda',
    'SA': 'Suudi Arabistan',
    'SB': 'Solomon Adaları',
    'SC': 'Seyşeller',
    'SD': 'Sudan',
    'SE': 'İsveç',
    'SG': 'Singapur',
    'SH': 'Saint Helena',
    'SI': 'Slovenya',
    'SJ': 'Svalbard ve Jan Mayen Adaları',
    'SK': 'Slovakya',
    'SL': 'Sierra Leone',
    'SM': 'San Marino',
    'SN': 'Senegal',
    'SO': 'Somali',
    'SR': 'Surinam',
    'SS': 'Güney Sudan',
    'ST': 'São Tomé ve Príncipe',
    'SV': 'El Salvador',
    'SX': 'Sint Maarten',
    'SY': 'Suriye',
    'SZ': 'Svaziland',
    'TC': 'Turks ve Caicos Adaları',
    'TD': 'Çad',
    'TF': 'Fransız Güney Toprakları',
    'TG': 'Togo',
    'TH': 'Tayland',
    'TJ': 'Tacikistan',
    'TK': 'Tokelau',
    'TL': 'Timor-Leste',
    'TM': 'Türkmenistan',
    'TN': 'Tunus',
    'TO': 'Tonga',
    'TR': 'Türkiye',
    'TT': 'Trinidad ve Tobago',
    'TV': 'Tuvalu',
    'TW': 'Tayvan',
    'TZ': 'Tanzanya',
    'UA': 'Ukrayna',
    'UG': 'Uganda',
    'UM': 'ABD Uzak Adaları',
    'US': 'ABD',
    'UY': 'Uruguay',
    'UZ': 'Özbekistan',
    'VA': 'Vatikan',
    'VC': 'Saint Vincent ve Grenadinler',
    'VE': 'Venezuela',
    'VG': 'Britanya Virjin Adaları',
    'VI': 'ABD Virjin Adaları',
    'VN': 'Vietnam',
    'VU': 'Vanuatu',
    'WF': 'Wallis ve Futuna Adaları',
    'WS': 'Samoa',
    'YE': 'Yemen',
    'YT': 'Mayotte',
    'ZA': 'Güney Afrika',
    'ZM': 'Zambiya',
    'ZW': 'Zimbabve',
    'XK': 'Kosova',
    'AN': 'Hollanda Antilleri',
  };

  @override
  final String selectCountryCodeAppBarText = 'Ülke Kodu Seçin';

  @override
  final String cannotDeleteSelectedAddressMessage = 'Teslimat adres olarak seçilen adresi silemesiniz.';

  @override
  String get timeoutErrorMessage => 'Bağlantı zaman aşımına uğradı';
}
