import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number){
    num sumOfDigits = 0;
    var digitsOfNumber = number.toString();
    var quantityOfDigits = digitsOfNumber.length;

    for (var digitPosition = 0; digitPosition < quantityOfDigits; digitPosition++) {
      var digitValue = int.parse(digitsOfNumber[digitPosition]);
      sumOfDigits += pow(digitValue, quantityOfDigits);
    }

    return sumOfDigits == number;
  }
}
