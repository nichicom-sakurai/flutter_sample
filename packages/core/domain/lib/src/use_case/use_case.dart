// ignore_for_file: lines_longer_than_80_chars

/// UseCase の基底クラス
abstract interface class UseCase<Arguments, ReturnType> {
  ReturnType execute({required Arguments args});
}

/// UseCase の拡張関数群
extension UseCaseX<ReturnType> on UseCase<void, ReturnType> {
  /// 引数なしで UseCase を実行する
  ///
  /// ```dart
  /// final keywordString = ref.read(getSearchEventKeywordUseCaseProvider).call();
  ///
  /// // or
  ///
  /// final keywordString = ref.read(getSearchEventKeywordUseCaseProvider)();
  ///
  /// // or
  ///
  /// final getSearchEventKeyword = ref.read(getSearchEventKeywordUseCaseProvider);
  /// final keywordString = getSearchEventKeyword(); // or getSearchEventKeyword.call();
  /// ```
  ReturnType call() => execute(args: null);
}
