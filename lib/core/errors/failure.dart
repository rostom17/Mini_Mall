import 'package:equatable/equatable.dart';

import 'exception.dart';

sealed class Failure extends Equatable {
  final String message;
  final int? statusCode;
  const Failure({required this.message, this.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message =
        "No internet! Please check your internet connection and try again.",
  });
}

class RequestTimeoutFailure extends Failure {
  const RequestTimeoutFailure({
    super.message = "Request timeout! Try again later.",
  });
}

class RequestCancelledFailure extends Failure {
  const RequestCancelledFailure({
    super.message = "Request cancelled! Try again.",
  });
}

class ParsingFailure extends Failure {
  const ParsingFailure({super.message = "Failed to parse server response!"});
}

class StorageFailure extends Failure {
  const StorageFailure({super.message = "Unable to access storage!"});
}

class CacheFailure extends Failure {
  const CacheFailure({super.message = "Failed to retrieve cache data!"});
}

class BadRequestFailure extends Failure {
  const BadRequestFailure({
    super.message = "Invalid request. Please check your input.",
    super.statusCode = 400,
  });
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({
    super.message = "Unauthorized! Please login again.",
    super.statusCode = 401,
  });
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure({
    super.message = "You don't have permission to perform this action.",
    super.statusCode = 403,
  });
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({
    super.message = "The requested resource couldn't be found.",
    super.statusCode = 404,
  });
}

class RateLimitFailure extends Failure {
  const RateLimitFailure({
    super.message = "Too many requests. Please slow down and try again later.",
    super.statusCode = 429,
  });
}

class ClientSideFailure extends Failure {
  const ClientSideFailure({required super.message, super.statusCode});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.statusCode});
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.message = "An unknown error has occurred!"});
}

extension FailureMapping on AppException {
  Failure toFailure() => switch (this) {
    NetworkException e => NetworkFailure(message: e.message),
    RequestCancelledException e => RequestCancelledFailure(message: e.message),
    RequestTimeoutException e => RequestTimeoutFailure(message: e.message),
    StorageException e => StorageFailure(message: e.message),
    CacheException e => CacheFailure(message: e.message),
    ParsingException e => ParsingFailure(message: e.message),

    BadRequestException e => BadRequestFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),
    UnauthorizedException e => UnauthorizedFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),
    NotFoundException e => NotFoundFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),
    ForbiddenException e => ForbiddenFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),
    RateLimitException e => RateLimitFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),
    ClientSideException e => ClientSideFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),

    ServerException e => ServerFailure(
      message: e.message,
      statusCode: e.statusCode,
    ),

    UnknownException e => UnknownFailure(message: e.message),
  };
}
