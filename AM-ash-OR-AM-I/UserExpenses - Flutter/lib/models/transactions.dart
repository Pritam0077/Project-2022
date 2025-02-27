import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionsModel with ChangeNotifier {
  List<Transaction> transactions = [];
  IconData _currency = Icons.attach_money_rounded;

  IconData get currency => _currency;
  set currency(IconData currency) {
    _currency = currency;
    notifyListeners();
  }

  void addTransaction(String title, double amount) {
    String dateStr = DateFormat.yMMMd().format(DateTime.now()).toString();
    String time = DateFormat.jm().format(DateTime.now()).toString();
    transactions.add(
      Transaction(
        title: title,
        amount: amount,
        date: dateStr,
        time: time,
      ),
    );
    notifyListeners();
  }
}

class Transaction {
  final String title;
  final double amount;
  final String date;
  final String time;
  Transaction({
    required this.title,
    required this.amount,
    required this.date,
    required this.time,
  });
}
