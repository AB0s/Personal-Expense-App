import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/Transaction.dart';
class TransactionList extends StatelessWidget{
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context){
    return Container( height: 300 ,
      child:ListView.builder(itemBuilder:(ctx,index) {
          return Card(
            child: Row(children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15,),
                decoration: BoxDecoration(
                    border:Border.all(
                      color: Colors.purple,
                      width:2,
                    )
                ),
                padding: const EdgeInsets.all(10),
                child: Text('\$${transactions[index].amount.toStringAsFixed(2)}',
                  style:const TextStyle(fontWeight:FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(transactions[index].title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Text(DateFormat.yMMMd().format(transactions[index].date),
                    style: const TextStyle(fontSize: 16,color: Colors.grey),)
                ],),
            ],
            ),
          );
    },itemCount: transactions.length,
    ),
  );
  }
}