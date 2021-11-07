import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Providers.dart';

// ConsumerWidget
class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 商品リストをウォッチ！
    final List<String> itemList = ref.watch(itemListProvider);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                for (final category in ['本', 'ゲーム', '家電'])
                  ElevatedButton(
                      onPressed: () {
                        // 選択された商品カテゴリで更新
                        ref.read(categoryProvider.state).state = category;
                      },
                      child: Text(category))
              ],
            ),
            for (final item in itemList)
              ListTile (
                title: Text(item)
              ),
          ],
        ),
      ),
    );
  }
}