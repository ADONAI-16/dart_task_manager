class InvalidTaskException implements Exception {
  final String message;
  InvalidTaskException(this.message);

  @override
  String toString() => "InvalidTaskException: $message";
}
