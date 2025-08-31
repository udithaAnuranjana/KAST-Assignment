import '../Domain/account_item.dart';
import '../Domain/card_item.dart';

class FakeData {

  //Dummy card data
  static const List<CardItem> cards = [
    CardItem(id: 'c1', currency: 'EUR', lastDidits: '2330', amount: 8199.24),
    CardItem(id: 'c2', currency: 'USD', lastDidits: '1121', amount: 3420.00),
    CardItem(id: 'c3', currency: 'GBP', lastDidits: '7744', amount: 560.10),
  ];

  //Dummy account data
  static const List<AccountItem> accounts = [
    AccountItem(id: 'a1', title: '5555-444-3-2222-11111'),
    AccountItem(id: 'a2', title: '1000.44 EUR', currency: 'EUR'),
    AccountItem(id: 'a3', title: '45.58 GBP',  currency: 'GBP'),
  ];
}
