# flutter_app_riverpod

## mainのhomeに定義するWidgetを付け替えて確認する

### example1
- StateProviderで変化を受信し、その変化を別のProvierで監視する
- カテゴリのボタンを押されたら、表示するリストの中身が変わる
- ConsumerWidget

### example2
- ProviderFamilyを使うことで、引数を受け取ることができる。Provider<State, T> Stateが返す型、Tが受け取る型。
- ユーザーのリストをタップして詳細画面に遷移する。詳細画面で表示するユーザーの情報はProviderから受け取る
