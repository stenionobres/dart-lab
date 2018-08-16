class ScrabbleScore{
  var _pointsByCaracter = new Map<String, int>();

  ScrabbleScore(){
    _pointsByCaracter[''] = 0;
    _pointsByCaracter['a'] = 1;
    _pointsByCaracter['b'] = 3;
    _pointsByCaracter['c'] = 3;
    _pointsByCaracter['d'] = 2;
    _pointsByCaracter['e'] = 1;
    _pointsByCaracter['f'] = 4;
    _pointsByCaracter['g'] = 2;
    _pointsByCaracter['h'] = 4;
    _pointsByCaracter['i'] = 1;
    _pointsByCaracter['j'] = 8;
    _pointsByCaracter['k'] = 5;
    _pointsByCaracter['l'] = 1;
    _pointsByCaracter['m'] = 3;
    _pointsByCaracter['n'] = 1;
    _pointsByCaracter['o'] = 1;
    _pointsByCaracter['p'] = 3;
    _pointsByCaracter['q'] = 10;
    _pointsByCaracter['r'] = 1;
    _pointsByCaracter['s'] = 1;
    _pointsByCaracter['t'] = 1;
    _pointsByCaracter['u'] = 1;
    _pointsByCaracter['v'] = 4;
    _pointsByCaracter['w'] = 4;
    _pointsByCaracter['x'] = 8;
    _pointsByCaracter['y'] = 4;
    _pointsByCaracter['z'] = 10;
  }

  int score(String word){
    var scrabbleScore = 0;

    for (var caracter = 0; caracter < word.length; caracter++) {
      var lowerCaseCaracter = word[caracter].toLowerCase();
      scrabbleScore += _pointsByCaracter[lowerCaseCaracter];
    }

    return scrabbleScore;
  }
}