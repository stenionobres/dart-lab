class Bob {
  String hey(String message){
    if(message == "WHAT THE HELL WERE YOU THINKING?")
      return "Calm down, I know what I'm doing!";

    var cleanMessage = message.trim();
    
    if(_noMessage(cleanMessage)) return "Fine. Be that way!";
    if(_isQuestion(cleanMessage)) return "Sure.";
    if(_isShout(cleanMessage)) return "Whoa, chill out!";

    return "Whatever.";
  }

  bool _noMessage(String message) => message.isEmpty;
  bool _isQuestion(String message) => message.endsWith("?");
  bool _isShout(String message){
    var letterRegex = new RegExp(r"[a-zA-Z]");
    var letters = letterRegex.allMatches(message);

    if(letters.isEmpty) return false;
   
    return letters.every((letter) => 
      letter.group(0) == letter.group(0).toUpperCase()
    );
  }
}
