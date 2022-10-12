import 'package:first_app/Widgets/new_transaction.dart';
import 'package:first_app/Widgets/user_transactions.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    title: 'Flutter App',
    home: MyHomePage()
  ));
}
class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

    void startTransaction(BuildContext ctx) {
      showModalBottomSheet(context: ctx, builder: (_) {
        return NewTransaction(addTx)
      },);
    }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
        actions: [
          IconButton(onPressed:(){}, icon: const Icon(Icons.add))
        ],
      ),
      body:SingleChildScrollView(child:Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>
      [
        Container(
            width:double.infinity,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child:Text('CHART!'),
            ),
        ),
        UserTransactions(),
      ],
      ),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child:const Icon(Icons.add)),
    );

  }
}