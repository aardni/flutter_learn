class Tokens {
  String? name;
  late String? image;
  late String? money;
  final String? percentage;
  final String? amount;

  Tokens({this.name, this.image, this.money, this.percentage, this.amount});
}

final List<Tokens> allTokens = [
  Tokens(
      name: "BNB",
      image: "assets/crypto/bnb_light.png",
      money: "325.23",
      amount: "0",
      percentage: "3.76%"),
  Tokens(
      name: "BNB",
      image: "assets/crypto/bnb_light.png",
      money: "325.23",
      amount: "0",
      percentage: "3.76%"),
  Tokens(
      name: "BNB",
      image: "assets/crypto/bnb_light.png",
      money: "325.23",
      amount: "0",
      percentage: "3.76%"),
];
