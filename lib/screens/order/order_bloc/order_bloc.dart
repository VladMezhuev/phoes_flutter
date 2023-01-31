import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/order_repo.dart';

part 'order_event.dart';

part 'order_state.dart';

part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRepository;

  OrderBloc({required this.orderRepository}) : super(const OrderState()) {
    on<GetProductColor>(_onGetProductColor);
    on<GetUserName>(_onGetUserName);
    on<GetUserPhone>(_onGetUserPhone);
    on<GetUserEmail>(_onGetGetUserEmail);
    on<GetDeliveryMethod>(_onGetDeliveryMethod);
    on<GetNeedToCall>(_onGetNeedToCall);
    on<GetComment>(_onGetComment);

    on<CreateOrder>(_onCreateOrder);
  }

  void _onGetProductColor(event, emit) {
    emit(state.copyWith(color: event.color));
  }

  void _onGetUserName(event, emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onGetUserPhone(event, emit) {
    emit(state.copyWith(phone: event.phone));
  }

  void _onGetGetUserEmail(event, emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onGetDeliveryMethod(event, emit) {
    emit(state.copyWith(delivery: event.delivery));
  }

  void _onGetNeedToCall(event, emit) {
    emit(state.copyWith(needToCall: event.needToCall));
  }

  void _onGetComment(event, emit) {
    emit(state.copyWith(comment: event.comment));
  }

  void _onCreateOrder(event, emit) async {
    emit(state.copyWith(isLoading: true));
    await orderRepository.create(
      color: state.color,
      name: state.name,
      phone: state.phone,
      email: state.email,
      delivery: state.delivery,
      needToCall: state.needToCall,
      comment: state.comment,
    );
    emit(state.copyWith(isLoading: false));
    emit(state.copyWith(orderCreated: true));
  }
}
