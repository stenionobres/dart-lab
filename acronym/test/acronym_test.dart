import 'package:test/test.dart';
import 'package:acronym/acronym.dart';

void main() {
  final Acronym acronym = new Acronym();

  group('Acronym', () {
    group('Abbreviate a phrase', () {
      test("basic", () {
        final String result = acronym.abbreviate("Portable Network Graphics");
        expect(result, equals("PNG"));
      }, skip: false);

      test("lowercase words", () {
        final String result = acronym.abbreviate("Ruby on Rails");
        expect(result, equals("ROR"));
      }, skip: false);

      test("punctuation", () {
        final String result = acronym.abbreviate("First In, First Out");
        expect(result, equals("FIFO"));
      }, skip: false);

      test("all caps word", () {
        final String result = acronym.abbreviate("GNU Image Manipulation Program");
        expect(result, equals("GIMP"));
      }, skip: false);

      test("punctuation without whitespace", () {
        final String result = acronym.abbreviate("Complementary metal-oxide semiconductor");
        expect(result, equals("CMOS"));
      }, skip: false);
    });
  });
}
