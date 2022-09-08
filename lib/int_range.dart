extension IntRange on int {
  /// A arithmetic sequence of numbers from [this] to, but not including [end].
  ///
  /// The difference between two consecutive numbers is [stepSize].
  /// The [stepSize] must be positive (not negative or zero).
  ///
  /// The first number is always [this].
  /// If [this] is smaller than [end], the next number in the sequence is found by
  /// adding [stepSize] to the current number until reaching or exceeding [end].
  /// If [end] is smaller than [this], the next number in the sequence is found by
  /// subtracting [stepSize] from the current number until reaching or subceeding [end].
  Iterable<int> to(int end, [int stepSize = 1]) sync* {
    if (this <= end) {
      for (var i = this; i < end; i += stepSize) {
        yield i;
      }
    } else {
      for (var i = this; i > end; i -= stepSize) {
        yield i;
      }
    }
  }
}
