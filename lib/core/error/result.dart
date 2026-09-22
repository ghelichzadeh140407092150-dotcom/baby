// core/error/result.dart
/// A Result type for handling success/failure without exceptions
/// Used throughout the app for repository returns and business logic

sealed class Result<T> {
  const Result();
  
  /// Returns true if this is a success result
  bool get isSuccess => this is Success<T>;
  
  /// Returns true if this is a failure result
  bool get isFailure => this is Failure<T>;
  
  /// Returns the value if success, throws if failure
  T get value {
    if (this is Success<T>) {
      return (this as Success<T>).value;
    }
    throw StateError('Cannot get value from Failure');
  }
  
  /// Returns the error if failure, throws if success
  Object get error {
    if (this is Failure<T>) {
      return (this as Failure<T>).error;
    }
    throw StateError('Cannot get error from Success');
  }
  
  /// Maps success value to a new type
  Result<R> map<R>(R Function(T value) transform) {
    if (this is Success<T>) {
      return Success(transform((this as Success<T>).value));
    }
    return Failure<R>((this as Failure<T>).error);
  }
  
  /// Flat maps success value to a new Result
  Result<R> flatMap<R>(Result<R> Function(T value) transform) {
    if (this is Success<T>) {
      return transform((this as Success<T>).value);
    }
    return Failure<R>((this as Failure<T>).error);
  }
  
  /// Executes onSuccess if success, onFailure if failure
  void fold({
    required void Function(T value) onSuccess,
    required void Function(Object error) onFailure,
  }) {
    if (this is Success<T>) {
      onSuccess((this as Success<T>).value);
    } else {
      onFailure((this as Failure<T>).error);
    }
  }
}

/// Success case
class Success<T> extends Result<T> {
  const Success(this.value);
  final T value;
  
  @override
  bool operator ==(Object other) => identical(this, other) || 
      (other is Success<T> && other.value == value);
  
  @override
  int get hashCode => value.hashCode;
  
  @override
  String toString() => 'Success($value)';
}

/// Failure case
class Failure<T> extends Result<T> {
  const Failure(this.error);
  final Object error;
  
  @override
  bool operator ==(Object other) => identical(this, other) || 
      (other is Failure<T> && other.error == error);
  
  @override
  int get hashCode => error.hashCode;
  
  @override
  String toString() => 'Failure($error)';
}

/// Convenience constructors
Result<T> success<T>(T value) => Success(value);
Result<T> failure<T>(Object error) => Failure(error);

/// Extension for easier Result handling
extension ResultExtension<T> on Result<T> {
  /// Returns the value or a default if failure
  T getOrElse(T defaultValue) {
    return isSuccess ? value : defaultValue;
  }
  
  /// Returns the value or computes a default if failure
  T getOrCompute(T Function() compute) {
    return isSuccess ? value : compute();
  }
  
  /// Converts to nullable, returns null if failure
  T? toNullable() => isSuccess ? value : null;
}