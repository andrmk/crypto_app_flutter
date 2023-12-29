import 'package:crypto_coins_list/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CriptoCurrenciesList'),
        centerTitle: true,
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).dividerColor,
              ),
          itemCount: 10,
          itemBuilder: (context, index) {
            const coinName = 'Bitcoin';
            return const CryptoCoinTile(coinName: coinName,);
          }),
    );
  }
}
