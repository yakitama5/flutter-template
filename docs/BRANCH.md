# 🍔ブランチ

## 🔏ブランチ保護ルール

[ブランチ保護ルール](https://docs.github.com/ja/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/managing-a-branch-protection-rule) について記載します。

### ステータスチェック

[check-pr.yaml](/.github/workflows/check-pr.yaml) に `status-check` ジョブがあります。  
他のチェックジョブの結果を集約しているため、ステータスチェック対象のジョブを `status-check` ジョブのみ設定するだけでよくなる設計です。

`Require status checks to pass` の `Status checks that are required` に `status-check` を追加します。

![branch-rules-status-check.png](/docs/images/branch-rules-status-check.png)
