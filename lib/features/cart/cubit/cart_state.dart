part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class CartItemAdd extends CartState {}
final class CartItemMinus extends CartState {}
final class CartItemRemove extends CartState {}
