class PhoneNumber {
  dynamic clean(String phoneNumber) {
    var onlyNumbersRegex = new RegExp(r"[^0-9]+");
    var purePhoneNumber = phoneNumber.replaceAll(onlyNumbersRegex, "");

    if (purePhoneNumber.startsWith("1")) {
        purePhoneNumber = purePhoneNumber.substring(1);
    }

    if (_startsWithZero(purePhoneNumber) ||
        _firstExchangeCodeIsInvalid(purePhoneNumber) ||
        _lengthIsDiferentOfTen(purePhoneNumber)) return null;

    return purePhoneNumber;
  }

  bool _startsWithZero(String phoneNumber) => phoneNumber.startsWith("0");
  bool _firstExchangeCodeIsInvalid(String phoneNumber) => phoneNumber[3] == "0" || phoneNumber[3] == "1";
  bool _lengthIsDiferentOfTen(String phoneNumber) => phoneNumber.length != 10;
}
