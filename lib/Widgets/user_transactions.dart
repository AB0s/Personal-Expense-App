import 'package:flutter/material.dart';
import 'package:first_app/Widgets/Transaction_list.dart';
import 'package:first_app/Widgets/new_transaction.dart';
import '../Models/Transaction.dart';

class UserTransactions extends StatefulWidget{

  @override
  _UserTransactionsState createState()=>_UserTransactionsState();
}
class _UserTransactionsState extends State<UserTransactions>{
  final List<Transaction> _userTransactions=[
    Transaction(id: '1', title: 'Hey', amount: 70.00, date: DateTime.now()),
    Transaction(id: '2', title: 'Hi', amount: 70.00, date: DateTime.now()),
  ];
  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(
      id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now(),
    );
    setState((){
      _userTransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context){
    return Column(children: [
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions),
    ],);
  }
}