class Raindrops {
  String convert(int number){
    var raindrops = "";

    var isDivisibleByThree = _isDivisibleByThree(number);
    var isDivisibleByFive = _isDivisibleByFive(number);
    var isDivisibleBySeven = _isDivisibleBySeven(number);

    if (isDivisibleByThree) raindrops += "Pling";
    if (isDivisibleByFive) raindrops += "Plang";
    if (isDivisibleBySeven) raindrops += "Plong";

    if(!isDivisibleByThree && !isDivisibleByFive && !isDivisibleBySeven)
       raindrops += number.toString();

    return raindrops;
  }
}

bool _isDivisibleByThree(int number) => number % 3 == 0;
bool _isDivisibleByFive(int number) => number % 5 == 0;
bool _isDivisibleBySeven(int number) => number % 7 == 0;
