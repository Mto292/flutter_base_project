import 'package:flutter/services.dart';

/// TextBox onChange için yazıldı girilen metin karakterleri arasına istenilen karakter ayracı eklemekte.
/// Verilen Her hangi Bi metini [between] parçaya bölüp aralarına [addChar] karakterini koymakta
class TextMask extends TextInputFormatter {
  late final String addChar;
  late final int maxLength;
  late final int between;

  TextMask({
    required this.addChar,
    required this.maxLength,
    required this.between,
  });

  TextMask.creditCartDate() {
    addChar = '/';
    maxLength = 5;
    between = 2;
  }

  TextMask.creditCartNo() {
    addChar = ' ';
    maxLength = 19;
    between = 4;
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    //Eklemem işlemi
    String newTxt = newValue.text;
    String oldText = oldValue.text;
    if ((oldText.endsWith(addChar) || newTxt.endsWith(addChar)) &&
        (oldText.length > newTxt.length)) {
      // Silme işlemi
      // Eklenen karakter bi öncek silenen karakter ile beraber silenecek
      newTxt = newTxt.substring(0, newTxt.length - 1);
    } else {
      String _txt = '';
      newTxt = newTxt.replaceAll(addChar, '');
      for (int i = 0; i < newTxt.length; i++) {
        if ((i + 1) % between == 0 && _txt.length < maxLength - 1) {
          _txt = _txt + newTxt[i] + addChar;
        } else {
          _txt = _txt + newTxt[i];
        }
      }
      newTxt = _txt;
    }
    return TextEditingValue(
      text: newTxt,
      selection: TextSelection.collapsed(offset: newTxt.length),
    );
  }
}

/// Telefoon No maskeleme
class PhoneMask extends TextInputFormatter {
  final String addChar;

  PhoneMask({
    this.addChar = ' ',
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    //Eklemem işlemi
    String newTxt = newValue.text;
    String oldText = oldValue.text;
    newTxt = getMaskedText(newTxt, oldText: oldText);
    return TextEditingValue(
      text: newTxt,
      selection: TextSelection.collapsed(offset: newTxt.length),
    );
  }

  String getMaskedText(String newTxt, {String oldText = ''}) {
    if ((oldText.endsWith(addChar) || newTxt.endsWith(addChar)) &&
        (oldText.length > newTxt.length)) {
      // Silme işlemi
      // Eklenen karakter bi öncek silenen karakter ile beraber silenecek
      newTxt = newTxt.substring(0, newTxt.length - 1);
    } else {
      String _txt = '';
      newTxt = newTxt.replaceAll(addChar, '');
      for (int i = 0; i < newTxt.length; i++) {
        if (_txt.length == 3 || _txt.length == 7 || _txt.length == 10) {
          _txt = _txt + addChar + newTxt[i];
        } else {
          _txt = _txt + newTxt[i];
        }
      }
      newTxt = _txt;
    }
    return newTxt;
  }
}

/// OTP Şifre maskeleme
class OtpPasswordMask extends TextInputFormatter {
  final String addChar;

  OtpPasswordMask({
    this.addChar = ' ',
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    //Eklemem işlemi
    String newTxt = newValue.text;
    String oldText = oldValue.text;
    if ((oldText.endsWith(addChar) || newTxt.endsWith(addChar)) &&
        (oldText.length > newTxt.length)) {
      // Silme işlemi
      // Eklenen karakter bi öncek silenen karakter ile beraber silenecek
      newTxt = newTxt.substring(0, newTxt.length - 1);
    } else {
      String _txt = '';
      newTxt = newTxt.replaceAll(addChar, '');
      for (int i = 0; i < newTxt.length; i++) {
        if (_txt.length % 2 == 0) {
          _txt = _txt + newTxt[i] + addChar;
        } else if (_txt.length < 9) {
          _txt = _txt + newTxt[i];
        }
      }
      newTxt = _txt;
    }
    return TextEditingValue(
      text: newTxt,
      selection: TextSelection.collapsed(offset: newTxt.length),
    );
  }
}
