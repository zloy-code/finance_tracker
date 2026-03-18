import "../models/transactions.dart";

class TransactionService {
  List<Transaction> transactions = [];

  int currentId = 1;

  void add(Transaction t) {
    t.id = currentId++;
    transactions.add(t);
  }

  List<Transaction> getAll() {
    return transactions;
  }

  void delete(int id) {
    transactions.removeWhere((t) => t.id == id);
  }

  double getBalance() {
    double balance = 0;

    for (var t in transactions) {
      if (t.type == "income") {
        balance += t.amount;
      } else {
        balance -= t.amount;
      }
    }

    return balance;
  }
}
