import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number){
    num sumOfDigits = 0;
    var digitsOfNumber = number.toString().split('');

    for (var digit in digitsOfNumber) {
       var digitValue = int.parse(digit);
       sumOfDigits += pow(digitValue, digitsOfNumber.length);
    }

    return sumOfDigits == number;
  }
}
