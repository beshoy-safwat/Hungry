part of 'checkout_cubit.dart';

@immutable
sealed class CheckoutState {}

final class CheckoutInitial extends CheckoutState {}
final class CheckoutChangePayment extends CheckoutState {}
final class CheckoutChangeCheckobox extends CheckoutState {}
