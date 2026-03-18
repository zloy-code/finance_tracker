import 'package:cli_table/cli_table.dart';
import '../models/transactions.dart';

void printTransactionsTable(List<Transaction> transactions) {
  if (transactions.isEmpty) {
    print("No transactions found.");
    return;
  }

  final table = Table(
    header: ["ID", "Title", "Amount", "Type", "Category", "Date"],
  );

  final data = transactions
      .map(
        (t) => [
          t.id.toString(),
          t.title,
          t.amount.toStringAsFixed(2),
          t.type,
          t.category,
          t.date.toString().substring(0, 10),
        ],
      )
      .toList();

  table.addAll(data);

  print(table.toString());
}
