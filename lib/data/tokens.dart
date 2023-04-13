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
      percentage: "3.76"),
  Tokens(
      name: "BTC",
      image: "assets/crypto/bitcoin.png",
      money: "30,470.53",
      amount: "0",
      percentage: "1.71"),
  Tokens(
      name: "ETH",
      image: "assets/crypto/eth.png",
      money: "2,001.16",
      amount: "0",
      percentage: "4.67"),
  Tokens(
      name: "BNB",
      image: "assets/crypto/bnb.png",
      money: "325.23",
      amount: "0",
      percentage: "3.76"),
];
