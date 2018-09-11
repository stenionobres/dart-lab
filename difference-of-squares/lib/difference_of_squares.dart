import 'dart:math';

class DifferenceOfSquares {
  num differenceOfSquares(int firstNaturalNumbers) =>
    squareOfSum(firstNaturalNumbers) - sumOfSquare(firstNaturalNumbers);
  
  num squareOfSum(int firstNaturalNumbers) {
    int sumOfNumbers = _naturalNumbers(firstNaturalNumbers)
                       .reduce((sum, number) => sum + number);

    return pow(sumOfNumbers, 2);
  }

  num sumOfSquare(int firstNaturalNumbers) {
    num sumOfSquares = _naturalNumbers(firstNaturalNumbers)
                       .reduce((sum, number) => sum + pow(number, 2));

    return sumOfSquares;
  }

  List<num> _naturalNumbers(int firstNaturalNumbers) => 
    List<num>.generate(firstNaturalNumbers, (i) => i + 1);
}
