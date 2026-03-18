# Finance Tracker CLI

A simple personal finance tracker (ERP-lite) built in **Dart**.  
This CLI app lets you track your income, expenses, and view your balance.

## Features

- Add income and expenses
- View all transactions
- Delete transactions
- View current balance
- Categorize transactions (Food, Rent, Transport, etc.)

## Project Structure
<pre> ```text finance_tracker/ ├── bin/ │ └── main.dart # Entry point (CLI) ├── lib/ │ ├── models/ # Data models (Transaction) │ ├── services/ # Business logic (TransactionService) │ └── utils/ # Helper functions (input helpers) ├── pubspec.yaml # Dart dependencies └── README.md # Project overview ``` </pre>




## Usage

1. Make sure you have Dart installed:  
   [Install Dart](https://dart.dev/get-dart)

2. Run the app:

```bash
dart run bin/main.dart


