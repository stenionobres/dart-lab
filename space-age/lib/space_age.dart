class SpaceAge {
  static final double _earthOrbitalPeriod = 31557600.0;
  final Map<String, double> _orbitalPeriodByPlanet = {
    "Earth": _earthOrbitalPeriod,
    "Mercury": _earthOrbitalPeriod * 0.2408467,
    "Venus": _earthOrbitalPeriod * 0.61519726,
    "Mars": _earthOrbitalPeriod * 1.8808158,
    "Jupiter": _earthOrbitalPeriod * 11.862615,
    "Saturn": _earthOrbitalPeriod * 29.447498,
    "Uranus": _earthOrbitalPeriod * 84.016846,
    "Neptune": _earthOrbitalPeriod * 164.79132
  };

  double age({String planet, int seconds}){
    double age = seconds / _orbitalPeriodByPlanet[planet];
    return double.parse(age.toStringAsFixed(2));
  }
}
