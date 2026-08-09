abstract class ApiConstants {
  const ApiConstants._();

  // Base URL
  static const baseUrl = "https://ecom-rs8e.onrender.com/api";

  // Timeouts
  static const connectionTimeout = Duration(seconds: 30);
  static const receiveTimeout = Duration(seconds: 30);
  static const sendTimeout = Duration(seconds: 30);

  // Retries
  static const maxRetry = 3;
  static const baseDelay = Duration(milliseconds: 500);
  static const maxDelay = Duration(seconds: 5);

  // pagination
  static const pageSize = 20;

  // Headers
  static const contentTypeHeader = 'Content-Type';
  static const authorizationHeader = 'Authorization';
  static const acceptHeader = 'accept';
  static const json = 'application/json';
  static const bearer = 'Bearer';
}
