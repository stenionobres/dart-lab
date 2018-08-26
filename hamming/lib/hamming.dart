class Hamming {
  int distance(String firstDNAStrand, String secondDNAStrand){
    if(firstDNAStrand.length != secondDNAStrand.length)
      throw ArgumentError("Size of dna strands can not be different");

    int hammingDifference = 0;

    for (var nucleotide = 0; nucleotide < firstDNAStrand.length; nucleotide++) {
      if(firstDNAStrand[nucleotide] != secondDNAStrand[nucleotide])
        hammingDifference++;
    }

    return hammingDifference;
  }
}
