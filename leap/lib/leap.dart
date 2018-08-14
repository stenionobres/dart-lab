class Leap {
  bool leapYear(int year){
    return _isLeapYear(year);
  }

  bool _isLeapYear(int year){
    return _isDivisibleByFour(year) && 
           _isNotDivisibleByHundred(year) || 
           _isDivisibleByFourHundred(year);
  }

  bool _isDivisibleByFour(int year){
    return year % 4 == 0;
  }

  bool _isNotDivisibleByHundred(int year){
    return year % 100 > 0;
  }

  bool _isDivisibleByFourHundred(int year){
    return year % 400 == 0;
  }
}
