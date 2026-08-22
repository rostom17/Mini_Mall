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
  static const contentTypeHeader = "Content-Type";
  static const authorizationHeader = "Authorization";
  static const acceptHeader = "accept";
  static const json = "application/json";
  static const bearer = "Bearer";

  // Endpoints
  static const slides = "/slides";
  static const brands = "/brands";
  static const categories = "/categories";

  static const products = "/products";
  static const createProductReview = "/review";
  static const productReviews = "/reviews";

  static const cart = "/cart";
  static const wishlist = "/wishlist";

  static const orders = "/orders";
  static const createOrder = "/order";
  static const confirmOrder = "/orders/transaction";

  // Auth Endpoints
  static const login = "/auth/login";
  static const signup = "/auth/signup";
  static const verifyOtp = "/auth/verify-otp";
  static const profile = "/auth/profile";

  // Placeholder image
  static const placeHolderImage = "https://dummyjson.com/icon/abc123/150";
}
