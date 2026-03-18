import '../lib/models/transactions.dart';
import '../lib/services/transaction_service.dart';
import '../lib/utils/input_helper.dart';
import '../lib/utils/table_helper.dart';

void main() {
  final service = TransactionService();

  while (true) {
    print("1. Add Transaction");
    print("2. View Transactions");
    print("3. Delete Transaction");
    print("4. View Balance");
    print("5. Exit");

    int choice = readInt("Enter your choice: ");

    switch (choice) {
      case 1:
        var t = Transaction(
          id: 0,
          title: readString("title: "),
          amount: readDouble("amount: "),
          type: readString("type (income/expense): "),
          category: readString("category: "),
          date: DateTime.now(),
        );
        service.add(t);
        break;
      case 2:
        final allTransactions = service.getAll();
        printTransactionsTable(allTransactions);
        break;
      case 3:
        int id = readInt("Enter transaction ID to delete: ");
        service.delete(id);
        print("✅ Transaction deleted (if it existed).");
        break;
      case 4:
        print("Balance: ${service.getBalance()}");
        break;
      case 5:
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}
