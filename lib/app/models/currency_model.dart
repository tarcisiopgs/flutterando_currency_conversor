class CurrencyModel {
  final double bitcoin;
  final double dolar;
  final double real;
  final double euro;
  final String name;

  CurrencyModel(
      {required this.bitcoin,
      required this.dolar,
      required this.real,
      required this.euro,
      required this.name});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
      CurrencyModel(
          name: 'Dolar', real: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.000088),
      CurrencyModel(
          name: 'Euro', real: 6.62, dolar: 1.17, euro: 1.0, bitcoin: 0.00010),
      CurrencyModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.34,
          bitcoin: 1.0),
    ];
  }
}
