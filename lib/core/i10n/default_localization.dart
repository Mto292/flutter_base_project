import 'package:flutter/material.dart' show ValueNotifier, Locale;
import '../../app/constants/enum/cache_key_enum.dart';
import '../../app/libs/locale_manager/locale_manager.dart';
import 'lan/en.dart';
import 'lan/tr.dart';

/// Default Locale ayarlarımız
const kDefaultLocal = Locale('tr');

/// Ugulamanın desteklediği diler
const Map<String, AppLocalizationLabel> supportedLocalization = {
  'tr': TrLocalization(),
  'en': EnLocalization(),
};

List<Locale> get getSupportedLocalList => List.generate(
      supportedLocalization.length,
      (index) => Locale(
        supportedLocalization.keys.elementAt(index),
      ),
    );

/// Locale ayarlarını [MyApp] te dinleme için yazıldı
final ValueNotifier<Locale> localeValueNotifier = ValueNotifier(_getDefaultKeyFromCache);

/// cache te dil ayarları varsa çeker yoksa [kDefaultLocal] değerini alır
Locale get _getDefaultKeyFromCache {
  final lan = Locale(
    LocaleManager.instance.getStringValue(CacheKey.languageCode) ?? kDefaultLocal.languageCode,
  );
  return lan;
}

abstract class AppLocalizationLabel {
  const AppLocalizationLabel();

  String get localizationTitle;

  String get lanCode;

  String get email;

  String get phone;

  /// Error Text
  String get defaultErrorMessage;

  String get serverErrorMessage;

  String get noInternetErrorMessage;

  /// Button Text
  String get addToBasketBtnText;

  String get filterBtnText;

  String get sortBtnText;

  String get takeoutBtnText;

  String get getInBtnText;

  String get payBtnText;

  String get repeatBtnText;

  String get selectCampaignBtnText;

  String get applyBtnText;

  String get closeBtnText;

  String get addNoteBtnText;

  String get cancelBtnText;

  String get saveBtnText;

  String get tryAgainBtnText;

  String get noBtnText;

  String get yesBtnText;

  String get okBtnText;

  String get logInBtnText;

  String get singUpBtnText;

  String get checkItBtnText;

  String get sendCodeAgainBtnText;

  String get loginWithTelBtnText;

  String get loginWithGoogleBtnText;

  String get loginWithAppleBtnText;

  String get scannerTheQrCodeBtnText;

  String get continueWithOutLoginBtnText;

  String get updateBtnText;

  String get addNewCardBtnText;

  String get deleteBtnText;

  String get addToOrderBtnText;

  String get updateTheOrderBtnText;

  String get updateTheBasketBtnText;

  String get requestAccountBtnText;

  String get requestToTableBtnText;

  String get sendToKitchenBtnText;

  String get justSendYourOrderBtnText;

  String get sendAllOrderBtnText;

  String get scannerBarcodeBtnText;

  String get enterCodeBtnText;

  String get rereadBtnText;

  String get sendBtnText;

  String get paymentBtnText;

  String get payNowBtnText;

  String get getVehicleBtnText;

  String get orderConfirmBtnText;

  String get useThisAddressBtnText;

  String get makeReservationBtnText;

  String get beAFanBtnText;

  String get showAllBtnText;

  String get completeReservationBtnText;

  String get addAddressBtnText;

  String get logOutBtnText;

  /// Bottom Bar Button
  String get mainScreenBottomBarBtnText;

  String get myOrdersScreenBottomBarBtnText;

  String get waiterScreenBottomBarBtnText;

  String get valetScreenBottomBarBtnText;

  String get profileScreenBottomBarBtnText;

  String get basketScreenBottomBarBtnText;

  String get campaignScreenBottomBarBtnText;

  String get searchScreenBottomBarBtnText;

  /// Description
  String campaignCountDescription(int campaignCount);

  /// Tag
  String discountTagHorizontalLeftTagText(int discount);

  String get inBasketTagText;

  String get starOfTheMonthTagText;

  String get discountTagText;

  String get selectedProductTagText;

  /// Other
  String get totalText;

  String get totalAmountText;

  String get amountToBePayText;

  String get tipText;

  String get minText;

  String get waitForApprovalText;

  String get preparingText;

  String get readyForDeliveryText;

  String get onTheRoadText;

  String get wasDeliveredText;

  String get openText;

  String get closeText;

  String get countText;

  String maxSelectText(int maxCount);

  String get doNotHaveAnAccountText;

  String get enterOtpCodeText;

  String get nameOnCardText;

  String get cardNoText;

  String get cardExpirationDateText;

  String get cardNameText;

  String get cardTermsText;

  String get readAndAcceptText;

  String get menuOfDayText;

  String get menusText;

  String get categoriesText;

  String get favoriteProductsText;

  String get tableManagerText;

  String get totalTableAccountText;

  String get youCanAlsoChooseThisText;

  String get enterTheCodeOnTableText;

  String get yourPaymentReceivedText;

  String get pleaseRateUsText;

  String get commentText;

  String get detailText;

  String get allTableText;

  String get myAccountText;

  String get yourOrderText;

  String get readyToDeliveryText;

  String get selectText;

  String get selectNeighborhoodText;

  String get selectDistrictText;

  String get selectCityText;

  String get homeAddressTitleText;

  String get workAddressTitleText;

  String get hotelAddressTitleText;

  String get otherAddressTitleText;

  String get titleWithStarText;

  String get cityWithStarText;

  String get districtWithStarText;

  String get neighborhoodWithStarText;

  String get addressWithStarText;

  String get builderNoWithStarText;

  String get typeNoWithStarText;

  String get selectTimeWithStarText;

  String get personCountWithStarText;

  String get nameWithStarText;

  String get telNoWithStarText;

  String get emailWithStarText;

  String get reservationNoteText;

  String get floorText;

  String get apartmentWithStarText;

  String get addressRouteText;

  String get paymentMethodText;

  String get payWithAnotherCardText;

  String get todayText;

  String get tomorrowText;

  String get nextDayText;

  String get inYourBasketText;

  String get addressSelectionText;

  String get deliveryTimeText;

  String get selectCardText;

  String get orderNoteText;

  String get immediateDeliveryTimeText;

  String get changeText;

  String todayWithDateText(String date);

  String get paymentMethodSelectionText;

  String get onlinePaymentMethodText;

  String get offlinePaymentMethodText;

  String get allCommitText;

  String get paymentMethodsText;

  String get workingTimesText;

  String get restorantPointText;

  String get commentsText;

  String get aboutText;

  String get kitchensText;

  String get highlightText;

  String get nearestDealerText;

  String get roadDirectionText;

  String get selectAppRoadDirectionText;

  String get yourOrderHasBenReceivedText;

  String get restorantAddressText;

  String get orderDetailText;

  String get paymentDetailText;

  String get liveSupportText;

  String get basketAmountText;

  String get fixMenuSectionTitleText;

  String get addBNewFixMenuText;

  String get fixMenuSectionText;

  String get lastOrdersText;

  String get favoriteRestorantText;

  String get serviceTimeText;

  String get developmentText;

  String get languageText;

  String get helpText;

  String get customerSupportText;

  String get myAddressesText;

  String get myPastOrdersText;

  String get myCardsText;

  String get campaignsText;

  String get discoverText;

  String get scannerBarcodeText;

  String get connectWithYourAccountText;

  String maxTitleText(String time);

  /// Dialog
  String get productNoteDialogText;

  String get openMeANewServiceDialogText;

  String get iWillJoinToMyFriendDialogText;

  String get noActionOnThisTableForALongTimeDialogText;

  String get noAuthorizedWaiterDialogText;

  String get weReceivedYourRequestDialogText;

  String get doYouWantToLogOutQuestionDialogText;

  String get loginForAddProductToBasketDialogText;

  String get deleteBasketForAddProductToBasketQuestionDialogText;

  String get updateAppFromAppStoreDialogText;

  String get updateAppFromGooglePlayDialogText;

  String get loginForApplyCampaignDialogText;

  String get acceptTheTermsDialogText;

  String get selectTheCardDialogText;

  String get weStaredPreparingYourOrderDialogText;

  String get yourOrderHasBeenSentToKitchenDialogText;

  String get enterYourNameDialogText;

  String get allUserInTableHasNotBeenFinishedHerOrderDialogText;

  String get scannerValidBarcodeDialogText;

  String get loginForPaymentDialogText;

  String get noVehicleFoundForYourInfoDialogText;

  String get noVehicleFoundDialogText;

  String get doYouWantToDeleteBasketDialogText;

  String get locationYouSelectedIstOutOfServiceDialogText;

  String get loginForReservationDialogText;

  String get yourReservationHasBeenCreatedDialogText;

  String get theDealerInYourBasketDoesNotServiceForThisAddressDialogText;

  String youCanNotCreateReservationForThisDateDialogText(String date);

  String underMinAmountDialogText(String difference);

  String get selectCountryCode;

  /// Toast Message
  String get addedProductToOrderToastMessageText;

  String get locationServiceIsClosedToastMessageText;

  String get locationPermissionDeniedToastMessageText;

  String get locationPermissionCompletelyDeniedToastMessageText;

  String get addedProductToBasketToastMessageText;

  String get paymentFinishedToastMessageText;

  String get paymentFailedToastMessageText;

  String get yourOrderHasBenReceivedToastMessageText;

  String get cardIsDeletedToastMessageText;

  String get enterYourTelNoToastMessageText;

  String get enterOtpCodeToastMessageText;

  String get successfulToastMessageText;

  String get notFoundValidCampaignToastMessageText;

  String get copiedToClipBoardToastMessageText;

  String get yourNameInTableHasBeenRegisteredToastMessageText;

  String get pleaseRateToastMessageText;

  String get thankForYourEvaluationToastMessageText;

  String get addressTitleReGexToastMessageText;

  String get enterFieldMarketWithStarToastMessageText;

  String get notFoundFixMenuToastMessageText;

  String acceptToastMessageText(String title);

  String get yourCartAddedToastMessageText;

  /// Regex
  String get enterEmailAddressReqExMessage;

  String get enterValidEmailReqExMessage;

  String get enterTelNoReqExMessage;

  String get enterValidTelNoReqExMessage;

  String get enterValidCodeReqExMessage;

  String get enterNameReqExMessage;

  String get enterValidNameReqExMessage;

  String get enterSurnameReqExMessage;

  String get enterValidSurnameReqExMessage;

  String get requiredFieldReqExMessage;

  String get enterValidCardNoReqExMessage;

  String get enterValidDatReqExMessage;

  String get enterValidPasswordReqExMessage;

  /// Text Field
  String get searchTextFieldText;

  String get telNoTextFieldText;

  String get nameTextFieldText;

  String get surnameTextFieldText;

  String get emailTextFieldText;

  String get cardNameTextFieldText;

  String get foodOrChickenTextFieldText;

  String get enterTableQRCodeTextFieldText;

  String get yourPlateTextFieldText;

  String get orderNoteTextFieldText;

  String get searchStreetTextFieldText;

  String get searchRestorantTextFieldText;

  /// Message
  String get countryNotFoundMessageText;

  String get productNotFoundMessageText;

  String get unknownPageRouteMessageText;

  String get paycellSecurityMessageText;

  /// Kısaltma
  String get minuteAbbreviationText;

  String get minimumAbbreviationText;

  String get neighbourhoodAbbreviationText;

  String get monthYearsAbbreviationText;

  String get cardVerificationCodeAbbreviationText;

  /// Screen AppBar name
  String get campaignDetailScreenAppBarText;

  String get campaignScreenAppBarText;

  String get developerScreenAppBarText;

  String get chooseLanguageScreenAppBarText;

  String get addNewCardScreenAppBarText;

  String get myCardsScreenAppBarText;

  String get productDetailScreenAppBarText;

  String get categoryScreenAppBarText;

  String get getWaiterScreenAppBarText;

  String get orderScreenAppBarText;

  String get valetScreenAppBarText;

  String get addressCreateScreenAppBarText;

  String get basketConfirmScreenAppBarText;

  String get dealerCommitScreenAppBarText;

  String get fixMenuScreenAppBarText;

  String get pastOrderDetailScreenAppBarText;

  String get pastOrdersScreenAppBarText;

  String get reservationScreenAppBarText;

  String get searchScreenAppBarText;

  String get userChooseAddressScreenAppBarText1;

  String get userChooseAddressScreenAppBarText2;

  String get userProfileScreenAppBarText;

  String get updateProfileScreenAppBarText;

  /// Code Country
  Map<String, String> get country;
}
