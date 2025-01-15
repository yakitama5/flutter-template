# ➕infrastructure_packageパッケージ追加手順

infrastructure_package(masonのbrick) で新しいパッケージを作成

```shell
mason make infrastructure_package
```

> [!Note]
> `mason make`で失敗する場合はbrickのセットアップが終了していないかもしれません。
`mason list` でfeatures_packageが出ない場合は、`mason get`を実行してください。

パッケージの名前が聞かれるので以下のようにスネークケースで入力する。(以下新たに作成したパッケージ名はsampleとする)

```shell
What is package name? (example: foo_bar): sample
```

その後`./packages/infrastructure/`に`sample`ができていることを確認する。

---
