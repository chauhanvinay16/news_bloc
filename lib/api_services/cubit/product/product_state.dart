part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductLoadded extends ProductState {
    final List<ProductModal> productModal;
    ProductLoadded(this.productModal);
 }

final class ProductError extends ProductState {}
