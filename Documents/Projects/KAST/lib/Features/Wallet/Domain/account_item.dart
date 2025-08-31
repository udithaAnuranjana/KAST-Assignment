//Account item
class AccountItem {
  final String id;
  final String title;
  final String? currency;

  const AccountItem({
    required this.id,
    required this.title,
    this.currency
  });
}
