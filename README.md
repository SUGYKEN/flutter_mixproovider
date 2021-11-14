# flutter_app_riverpod

## mainのhomeに定義するWidgetを付け替えて確認する

### example1
- StateProviderで変化を受信し、その変化を別のProvierで監視する
- カテゴリのボタンを押されたら、表示するリストの中身が変わる
- ConsumerWidget

![ex1](https://user-images.githubusercontent.com/77915965/141687411-3d42df52-0a62-4421-893a-dae782b43c88.gif)

### example2
- ProviderFamilyを使うことで、引数を受け取ることができる。Provider<State, T> Stateが返す型、Tが受け取る型。
- ユーザーのリストをタップして詳細画面に遷移する。詳細画面で表示するユーザーの情報はProviderから受け取る

![ex2](https://user-images.githubusercontent.com/77915965/141687417-acdaa465-f015-405a-bbe6-751606d01cd6.gif)

### example3
- StreamProviderで連続したデータを受け取る。画面が破棄されるタイミングでProviderも破棄する→autoDispose。破棄される時のイベントも受け取ることが可能。
- また破棄されるが、Providerに渡した時のデータを保持しておく（mantainState）ことも可能
- 画面が表示されたら秒数カウントを開始、別の画面に移動したらカウントストップ。戻った時に初期化。

![ex3](https://user-images.githubusercontent.com/77915965/141687420-42e67ede-a34b-48be-88cf-510889bafac2.gif)

### exapmle4
- ボタンを押下されたなどの任意のタイミングで状態をrefreshする作りも可能。
- 画面表示時に日時を表示、ボタンを押した時点の日付にrefreshする。

![ex4](https://user-images.githubusercontent.com/77915965/141687423-49475b45-4273-4f23-b9f7-dd6b2b2c8b0b.gif)

### example5
- WatchRefListenerを使って変更をListenすることができる。
- ProviderObserverを継承したクラスを作ることでProviderを監視することができる
 
![ex5](https://user-images.githubusercontent.com/77915965/141687428-480fe041-13dd-4829-aa64-00c8653e24ea.gif)
