class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  String cardBackground;
  String cardBalance;
  String cardcurrency;
  String cardname;
  

  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType, this.cardBackground, this.cardBalance, this.cardcurrency, this.cardname);

}

List<CardModel> cards = cardData.map(
(item) => CardModel(
  item['user'].toString(),
  item['cardNumber'].toString(),
  item['cardExpired'].toString(),
  item['cardType'].toString(),
  item['cardBackground'].toString(),
  item['cardBalance'].toString(),
  item['cardcurrency'].toString(), 
  item['cardname'].toString(), 
),
).toList();

var cardData = [
  {
    "user": "Rangasamy E",
    "cardNumber": "**** **** **** 0954",
    "cardExpired": "02/2026",
    "cardType": "assets/atmlogo/master.png",
    "cardBackground": "assets/images/6.jpg",
    "cardBalance": "12,50,000",
    "cardcurrency": "assets/currency/india.png",
    "cardname":"Master Card"
  },
  {
    "user": "Rangasamy E",
    "cardNumber": "**** **** **** 0674",
    "cardExpired": "10/2030",
    "cardType": "assets/atmlogo/visa.png",
    "cardBackground": "assets/images/3.jpg",
    "cardBalance": "2,50,000",
    "cardcurrency": "assets/currency/uk.png",
    "cardname":"VISA Card"
  },
  {
    "user": "Rangasamy E",
    "cardNumber": "**** **** **** 7455",
    "cardExpired": "10/2030",
    "cardType": "assets/atmlogo/paypal.png",
    "cardBackground": "assets/images/4.jpg",
    "cardBalance": "2,50,000",
    "cardcurrency": "assets/currency/uk.png",
    "cardname":"Paypal Card"
  },
];