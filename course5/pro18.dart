import 'dart:io';
//encrypt text 
//
String input(String Message) {
  String text;
  //

  print(Message);
  //
  text = stdin.readLineSync()!;

  return text;
}

//
String encryptText(int key, String text) {
  String textWithEnc = "";
  for (var i = 0; i < text.length; i++) {
    int temp = text.codeUnitAt(i);
    textWithEnc += String.fromCharCode(temp + key);
  }
  return textWithEnc;
}

String DecryptionText(int key, String textWithEnc) {
  String textWithoutEnc = "";
  for (var i = 0; i < textWithEnc.length; i++) {
    int temp = textWithEnc.codeUnitAt(i);
    textWithoutEnc += String.fromCharCode(temp - key);
  }
  return textWithoutEnc;
}

void main() {
  String text = input("Enter Text: ");
  print("Enter Key");
  int key = int.parse(stdin.readLineSync()!);
  String EncryptText = encryptText(key, text);
  String textWithoutEnc = DecryptionText(key, EncryptText);

  print("Text Before Encryption: $text");
  print("Text After Encryption: $EncryptText");
  print("Text After Decryption : $textWithoutEnc");
}
