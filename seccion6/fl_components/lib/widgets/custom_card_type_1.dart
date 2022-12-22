import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.account_balance_wallet_rounded,
                color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Aute consectetur proident cupidatat consequat. Magna culpa consectetur duis ut eu ipsum nisi. Enim cupidatat mollit mollit amet velit amet aute aute et fugiat. Do laborum ut excepteur ut ad tempor non elit nisi officia.'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
