/// You can use [let] like this:
///
/// ```dart
/// dynamic? value = null;
/// value?.let(NetworkSchedule.fromJson);
/// ```
extension LetExt<T> on T {
  R let<R>(R Function(T) block) => block(this);
}
