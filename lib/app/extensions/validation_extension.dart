import 'package:flutter_base_project/core/i10n/i10n.dart';

/// written for validate the characters in edit text
/// written this Extensions for String class
extension StringExtenstion on String {
  //for validate Email
  String? isMail() {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (isEmpty) {
      return AppLocalization.getLabels.enterEmailAddressReqExMessage;
    } else if (!regExp.hasMatch(this)) {
      return AppLocalization.getLabels.enterValidEmailReqExMessage;
    }
    return null;
  }

  bool isOTPCode(){
    String pattern=r'^[0-9]*$';
    RegExp regExp=RegExp(pattern);
    if((!regExp.hasMatch(this))||(length!=6)){
      return false;
    }
    return true;
  }

  //for validate phone numbers
  String? isTelNo() {
    String pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
    RegExp regExp = RegExp(pattern);
    if (length == 0) {
      return AppLocalization.getLabels.enterTelNoReqExMessage;
    } else if (!regExp.hasMatch(this)) {
      return AppLocalization.getLabels.enterValidTelNoReqExMessage;
    }
    return null;
  }

  //for validate activation code
  String? isQRCode() {
    String pattern = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';
    RegExp regExp = RegExp(pattern);
    if (length < 4 || length > 16 || !regExp.hasMatch(this)) {
      return AppLocalization.getLabels.enterValidCodeReqExMessage;
    }
    return null;
  }

  //for validate name
  String? isName() {
    String pattern =
        r"^[a-zA-ZüğişçöĞÜİŞÇÖıIZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð]+(([',. -][a-zA-ZüğişçöĞÜİŞÇÖıIZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ])?[a-zA-ZüğişçöĞÜİŞÇÖıIZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð]*)*$";
    RegExp regExp = RegExp(pattern);
    if (isEmpty) {
      return AppLocalization.getLabels.enterNameReqExMessage;
    } else if (length == 1 || !regExp.hasMatch(this)) {
      return AppLocalization.getLabels.enterValidNameReqExMessage;
    }
    return null;
  }

  //for validate name
  String? isSurName() {
    String pattern =
        r"^[a-zA-ZüğişçöĞÜİŞÇÖıIZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð]+(([',. -][a-zA-ZüğişçöĞÜİŞÇÖıIZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ])?[a-zA-ZüğişçöĞÜİŞÇÖıIZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð]*)*$";
    RegExp regExp = RegExp(pattern);
    if (isEmpty) {
      return AppLocalization.getLabels.enterSurnameReqExMessage;
    } else if (length == 1 || !regExp.hasMatch(this)) {
      return AppLocalization.getLabels.enterValidSurnameReqExMessage;
    }
    return null;
  }

  String? isNotEmptyController() {
    if (isEmpty) {
      return AppLocalization.getLabels.requiredFieldReqExMessage;
    }
    return null;
  }

  String? isCreditCardNumber() {
    if (isEmpty) {
      return AppLocalization.getLabels.requiredFieldReqExMessage;
    } else if (length < 16) {
      return AppLocalization.getLabels.enterValidCardNoReqExMessage;
    }
    return null;
  }

  String? isCreditCardDate() {
    if (isEmpty) {
      return AppLocalization.getLabels.requiredFieldReqExMessage;
    } else if (length < 4 || int.parse(substring(0, 2)) > 12 || int.parse(substring(2)) < 21) {
      return AppLocalization.getLabels.enterValidDatReqExMessage;
    }
    return null;
  }

  String? isCreditCardCVV() {
    if (isEmpty) {
      return AppLocalization.getLabels.requiredFieldReqExMessage;
    } else if (length < 3) {
      return AppLocalization.getLabels.enterValidPasswordReqExMessage;
    }
    return null;
  }
}
