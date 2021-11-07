import 'package:flutter_riverpod/flutter_riverpod.dart';

// 商品カテゴリを渡すProvider
final StateProvider<String> categoryProvider = StateProvider(
    (ref) {
      return '本';
    }
);

// 商品カテゴリをもとに商品リストを渡すProvider
final Provider<List<String>> itemListProvider = Provider(
    (ref) {
      // ref.watch()で他のProviderのデータを受け取れる
      final category = ref.watch(categoryProvider);
      // 商品カテゴリに対応する商品リストを返す
      final categoryMap = {
        '本': <String>['技術書','写真集','参考書'],
        'ゲーム': <String>['PS5ソフトA','PS5ソフトB','PS5ソフトC'],
        '家電': <String>['電子レンジ','冷蔵庫','洗濯機'],
      };
      return categoryMap[category] ?? <String>[];
    }
);