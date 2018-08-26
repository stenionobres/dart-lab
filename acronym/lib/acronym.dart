class Acronym {
  String abbreviate(String phrase){
    var initialLetter = 0;
    var acronym = "";
    var words = phrase.replaceAll("-", " ").split(" ");

    for (var word in words) {
      acronym += word[initialLetter].toUpperCase();
    }

    return acronym;
  }
}
