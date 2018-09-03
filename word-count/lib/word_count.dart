class WordCount {
  Map<String, int> countWords(String sentence){
    Map<String, int> wordCounter = new Map<String, int>();
   
    var newSentence = sentence.replaceAll(" '", ",")
                              .replaceAll("' ", ",")
                              .replaceAll(" ", ",")
                              .replaceAll("\n", ",")
                              .replaceAll(":", ",")
                              .replaceAll(".", "")
                              .replaceAll("!!&@\$%^&", ",")
                              .toLowerCase();

    var tokens = newSentence.split(",");

    for (var token in tokens.where((token) => token != "")) {
      if(wordCounter.containsKey(token) == false)
        wordCounter[token] = 0;

      wordCounter[token]++;
    }

    return wordCounter;
  }
}
