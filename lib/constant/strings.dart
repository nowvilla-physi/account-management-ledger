class Strings {
  // Title.
  static const menuTitle = 'メニュー';

  // Label.
  static const searchLabel = 'アカウントを検索';
  static const serviceLabel = 'サービス名';
  static const idLabel = 'ID(メールアドレス)';
  static const passwordLabel = 'パスワード';
  static const backupLabel = 'バックアップ';
  static const restoreLabel = '復旧';
  static const allDeleteLabel = 'データ削除';
  static const hintLabel = '詳細';
  static const confirmationLabel = '実行前の確認';

  // Button.
  static const addButton = '追加する';
  static const updateButton = '更新する';
  static const deleteButton = '削除する';
  static const closeButton = '閉じる';
  static const okButton = '実行する';
  static const cancelButton = 'キャンセル';

  // Message.
  static const noDataMessage = 'データが登録されていません。';
  static const copiedMessage = 'クリップボードにコピーしました。';
  static const loadingMessage = 'Loading...';
  static const backupInfoMessage =
      '登録済みのアカウントデータを端末上にバックアップします。(※Cloudなどの外部サービスに通信は行いません)';
  static const restoreInfoMessage =
      'バックアップからアカウントデータを復旧します。(現在登録しているデータは削除されません)';
  static const allDeleteInfoMessage = '登録しているすべてのアカウントデータを削除します。';
  static const backupMessage = '現在、登録しているアカウントデータでバックアップを取りますが、よろしいですか?';
  static const restoreMessage = 'バックアップされているデータを復旧しますが、よろしいですか?';
  static const allDeleteMessage = '登録しているすべてのアカウントデータを削除します。よろしいですか?';
  static const allDeleteLoadingMessage = '削除中...';

  // Error message.
  static const failedFetchAccountMessage = 'アカウントの一覧の取得に失敗しました。';
  static const failedRegisterAccountMessage = 'アカウントの追加に失敗しました。';
  static const failedUpdateAccountMessage = 'アカウントの更新に失敗しました。';
  static const failedDeleteAccountMessage = 'アカウントの削除に失敗しました。';
  static const failedDeleteAllAccountsMessage = '全てのアカウントの削除に失敗しました。';
  static const requiredValidatorMessage = '入力欄は全て必須項目です。';
  static const equalValidatorMessage = '入力内容が更新前の内容と同じです。';
  static const noAccountDeleteErrorMessage = '登録されているデータがないため、削除できません。';
}
