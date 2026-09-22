// data/purchase/purchase_gateway.dart
import 'package:hamrah_madaran/core/error/result.dart';

/// Subscription state
enum SubscriptionState { free, plus }

/// Abstract purchase gateway interface
abstract class PurchaseGateway {
  /// Check current subscription status
  Future<Result<SubscriptionState>> checkSubscriptionStatus();

  /// Initiate subscription purchase
  Future<Result<void>> initiateSubscription();

  /// Restore previous purchases
  Future<Result<void>> restorePurchase();

  /// Get product details
  Future<Result<List<ProductDetails>>> getProducts();
}

/// Product details
class ProductDetails {
  final String id;
  final String title;
  final String description;
  final String price;
  final String currencyCode;

  ProductDetails({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.currencyCode,
  });
}

/// Fake implementation for development
class FakePurchaseGateway implements PurchaseGateway {
  SubscriptionState _state = SubscriptionState.free;

  @override
  Future<Result<SubscriptionState>> checkSubscriptionStatus() async {
    return Success(_state);
  }

  @override
  Future<Result<void>> initiateSubscription() async {
    // Simulate purchase
    _state = SubscriptionState.plus;
    return const Success(null);
  }

  @override
  Future<Result<void>> restorePurchase() async {
    return const Success(null);
  }

  @override
  Future<Result<List<ProductDetails>>> getProducts() async {
    return Success([
      ProductDetails(
        id: 'monthly',
        title: 'اشتراک ماهانه',
        description: 'دسترسی کامل به تمام محتوا',
        price: '29,000',
        currencyCode: 'IRR',
      ),
      ProductDetails(
        id: 'yearly',
        title: 'اشتراک سالانه',
        description: 'دسترسی کامل با تخفیف',
        price: '249,000',
        currencyCode: 'IRR',
      ),
    ]);
  }

  /// For testing - manually set state
  void setStateForTesting(SubscriptionState state) {
    _state = state;
  }
}