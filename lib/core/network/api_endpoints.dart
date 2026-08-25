abstract final class ApiEndpoints {
  const ApiEndpoints._();

  // Auth
  static const login = "/auth/login";
  static const signup = "/auth/signup";
  static const verifyOtp = "/auth/verify-otp";
  static const profile = "/auth/profile";

  // Home
  static const slides = "/slides";
  static const brands = "/brands";
  static const categories = "/categories";

  // Products
  static const products = "/products";
  static const createProductReview = "/review";
  static const productReviews = "/reviews";

  static String productById(String id) =>
      "$products/id/${Uri.encodeComponent(id)}";
  static String productBySlug(String slug) =>
      "$products/${Uri.encodeComponent(slug)}";

  // Cart
  static const cart = "/cart";
  static const wishlist = "/wishlist";

  // Order
  static const orders = "/orders";
  static const createOrder = "/order";
  static const confirmOrder = "/orders/transaction";
}
