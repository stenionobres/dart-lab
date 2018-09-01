class Anagram {
  List<String> findAnagrams(String word, List<String> possibleAnagrams){
    var anagrams = new List<String>();

    if (_isCapital(word)) return anagrams;

    var characterCounterOfWord = _countByCharacter(word);

    for (var possibleAnagram in possibleAnagrams) {
        if (word.length != possibleAnagram.length) continue;

        var allCharactersIsAnagram = new List<bool>();
        var characterCounterOfPossibleAnagram = _countByCharacter(possibleAnagram);
        
        for (var counterByCharacter in characterCounterOfWord.entries) {
            var character = counterByCharacter.key;
            var quantity = counterByCharacter.value;

            var characterIsAnagram = characterCounterOfPossibleAnagram[character] == quantity;
            allCharactersIsAnagram.add(characterIsAnagram);
        }
       
        if (allCharactersIsAnagram.every((element) => element == true)) 
            anagrams.add(possibleAnagram);
    }

    return anagrams;
  }

  bool _isCapital(String word) => word == word.toUpperCase();

  Map<String, int> _countByCharacter(String word){
    var counterByCharacter = new Map<String, int>();
    var lowerCaseCharacters = word.toLowerCase().split('');

    for (var character in lowerCaseCharacters) {
      if (!counterByCharacter.containsKey(character))
         counterByCharacter[character] = 0;
      counterByCharacter[character]++;
    }

    return counterByCharacter;
  }
}
