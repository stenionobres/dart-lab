import 'package:test/test.dart';
import 'package:scrabble_score/scrabble_score.dart';

void main() {
  group('Scrabble score', () {

    final ScrabbleScore scrabbleScore = new ScrabbleScore();

    group('should return a score of 0 for', () {
      test('empty input', () {
        expect(scrabbleScore.score(''), equals(0));
      }, skip: false);
    });

    group('should return the appropriate score for', () {
      test('lowercase letters', () {
        expect(scrabbleScore.score('a'), equals(1));
      }, skip: false);

      test('uppercase letters', () {
        expect(scrabbleScore.score('A'), equals(1));
      }, skip: false);

      test('valuable letters', () {
        expect(scrabbleScore.score('f'), equals(4));
      }, skip: false);

      test('english-like word', () {
        expect(scrabbleScore.score('pinata'), equals(8));
      }, skip: false);

      test('long, mixed-case word', () {
        expect(scrabbleScore.score('OxyphenButazone'), equals(41));
      }, skip: false);

      test('medium, valuable word', () {
        expect(scrabbleScore.score('quirky'), equals(22));
      }, skip: false);

      test('medium word', () {
        expect(scrabbleScore.score('street'), equals(6));
      }, skip: false);

      test('short, valuable word', () {
        expect(scrabbleScore.score('zoo'), equals(12));
      }, skip: false);

      test('short word', () {
        expect(scrabbleScore.score('at'), equals(2));
      }, skip: false);

      test('a word containing one of every letter of the alphabet', () {
        expect(scrabbleScore.score('abcdefghijklmnopqrstuvwxyz'), equals(87));
      }, skip: false);

      test('a word containing one of every letter of the alphabet in reverse', () {
        expect(scrabbleScore.score('zyxwvutsrqponmlkjihgfedcba'), equals(87));
      }, skip: false);
    });
  });
}
