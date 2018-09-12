class RnaTranscription {
  final Map<String, String> _rnaNucleotides = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
  };

  String toRna(String dnaStrand) {
    var rnaTranscription = "";

    for (var nucleotide = 0; nucleotide < dnaStrand.length; nucleotide++) {
      var dnaNucleotide = dnaStrand[nucleotide];
      rnaTranscription += _getRnaNucleotide(dnaNucleotide);
    }

    return rnaTranscription;
  }

  String _getRnaNucleotide(String dnaNucleotide) {
    if (_rnaNucleotides.containsKey(dnaNucleotide)) {
      return _rnaNucleotides[dnaNucleotide];
    }

    throw ArgumentError("Invalid DNA Nucleotide");
  }

}
