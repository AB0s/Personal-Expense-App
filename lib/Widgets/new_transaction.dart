import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{
  final Function addTx;
  final titleController=TextEditingController();
  final amountController=TextEditingController();

  NewTransaction(this.addTx);
  void submitData(){
    final enteredTitle=titleController.text;
    final enteredAmount=double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount<=0){
      return;
    }

    addTx(
        titleController.text,
        double.parse(amountController.text)
    );
  }

  @override
  Widget build(BuildContext context){
    return Card(
        elevation: 3,
        child:Container(
          padding:const EdgeInsets.all(10),
          child: Column(
            children:[
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: titleController,
                onSubmitted: (_)=>submitData(),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Amount'),
                controller: amountController,
                onSubmitted: (_)=>submitData(),
              ),
              TextButton(onPressed:submitData,
                  child: const Text('Add Transaction', style: TextStyle(color: Colors.purple),))
            ],
          ),
        )
    );
  }

}