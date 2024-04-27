/// convert Stream<List<T>> to Stream<List<R>>
extension StreamListExtension<T, K> on Stream<List<T>> {
  Stream<List<R>> mapList<R>(R Function(T) mapper) {
    return map((list) => list.map(mapper).toList());
  }
}
