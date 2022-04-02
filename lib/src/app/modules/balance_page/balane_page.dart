import 'package:flutter/material.dart';
import 'package:sit/src/app/components/standard_card.dart';
import 'package:sit/src/app/components/standard_page.dart';
import 'package:sit/src/app/components/standard_textform.dart';

class BalancePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BalancaPageState();
  }
}

class _BalancaPageState extends State<BalancePage> {
  TextEditingController monthIncomeController = TextEditingController();
  String initialValue = '';

  presentMonthlyIncome({required String value}){
    setState(() {
      initialValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: 'Saldo',
      body: Column(
        children: [
          StandardTextForm(
            label: 'Entrada do mês',
            userInputController: monthIncomeController,
            onEditingComplete: () {
              presentMonthlyIncome(value: monthIncomeController.text);
            },
          ),
          SizedBox(height: 20),
          StandardCard(
            leftText: 'R\$:',
            rightText: initialValue,
          )
        ],
      ),
    );
  }
}
