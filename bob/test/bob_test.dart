import 'package:test/test.dart';
import 'package:bob/bob.dart';

void main() {
  final Bob bob = new Bob();

  group('Bob', () {
    test("stating something", () {
      final String result = bob.hey("Tom-ay-to, tom-aaaah-to.");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("shouting", () {
      final String result = bob.hey("WATCH OUT!");

      expect(result, equals("Whoa, chill out!"));
    }, skip: false);

    test("shouting gibberish", () {
      final String result = bob.hey("FCECDFCAAB");

      expect(result, equals("Whoa, chill out!"));
    }, skip: false);

    test("asking a question", () {
      final String result = bob.hey("Does this cryogenic chamber make me look fat?");

      expect(result, equals("Sure."));
    }, skip: false);

    test("asking a numeric question", () {
      final String result = bob.hey("You are, what, like 15?");

      expect(result, equals("Sure."));
    }, skip: false);

    test("asking gibberish", () {
      final String result = bob.hey("fffbbcbeab?");

      expect(result, equals("Sure."));
    }, skip: false);

    test("talking forcefully", () {
      final String result = bob.hey("Let's go make out behind the gym!");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("using acronyms in regular speech", () {
      final String result = bob.hey("It's OK if you don't want to go to the DMV.");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("forceful question", () {
      final String result = bob.hey("WHAT THE HELL WERE YOU THINKING?");

      expect(result, equals("Calm down, I know what I'm doing!"));
    }, skip: false);

    test("shouting numbers", () {
      final String result = bob.hey("1, 2, 3 GO!");

      expect(result, equals("Whoa, chill out!"));
    }, skip: false);

    test("only numbers", () {
      final String result = bob.hey("1, 2, 3");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("question with only numbers", () {
      final String result = bob.hey("4?");

      expect(result, equals("Sure."));
    }, skip: false);

    test("shouting with special characters", () {
      final String result = bob.hey("ZOMG THE %^*@#\$(*^ ZOMBIES ARE COMING!!11!!1!");

      expect(result, equals("Whoa, chill out!"));
    }, skip: false);

    test("shouting with no exclamation mark", () {
      final String result = bob.hey("I HATE YOU");

      expect(result, equals("Whoa, chill out!"));
    }, skip: false);

    test("statement containing question mark", () {
      final String result = bob.hey("Ending with ? means a question.");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("non-letters with question", () {
      final String result = bob.hey(":) ?");

      expect(result, equals("Sure."));
    }, skip: false);

    test("prattling on", () {
      final String result = bob.hey("Wait! Hang on. Are you going to be OK?");

      expect(result, equals("Sure."));
    }, skip: false);

    test("silence", () {
      final String result = bob.hey("");

      expect(result, equals("Fine. Be that way!"));
    }, skip: false);

    test("prolonged silence", () {
      final String result = bob.hey("          ");

      expect(result, equals("Fine. Be that way!"));
    }, skip: false);

    test("alternate silence", () {
      final String result = bob.hey("										");

      expect(result, equals("Fine. Be that way!"));
    }, skip: false);

    test("multiple line question", () {
      final String result = bob.hey("\nDoes this cryogenic chamber make me look fat?\nno");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("starting with whitespace", () {
      final String result = bob.hey("         hmmmmmmm...");

      expect(result, equals("Whatever."));
    }, skip: false);

    test("ending with whitespace", () {
      final String result = bob.hey("Okay if like my  spacebar  quite a bit?   ");

      expect(result, equals("Sure."));
    }, skip: false);

    test("other whitespace", () {
      final String result = bob.hey("\n");

      expect(result, equals("Fine. Be that way!"));
    }, skip: false);

    test("non-question ending with whitespace", () {
      final String result = bob.hey("This is a statement ending with whitespace      ");

      expect(result, equals("Whatever."));
    }, skip: false);
  });
}
