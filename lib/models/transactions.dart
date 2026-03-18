class Transaction {
  int id;
  String title;
  double amount;
  String type;
  String category;
  DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.type,
    required this.category,
    required this.date,
  });
  @override
  String toString() {
    return "Transactions{id: $id, title: $title, amount: $amount, type: $type, category: $category, date: $date}";
  }
}
