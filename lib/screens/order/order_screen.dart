import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_app/data/order_repo.dart';
import 'package:phone_app/screens/catalog/phone_item_model.dart';
import 'package:phone_app/screens/order/order_bloc/order_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key, required this.model}) : super(key: key);

  final PhoneItem model;
  final orderRepository = GetIt.instance<OrderRepository>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderBloc(orderRepository: orderRepository),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order Screen'),
        ),
        body: BlocListener<OrderBloc, OrderState>(
          listener: (context, state) {
            if (state.orderCreated) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Order created, color: ${state.color} name: ${state.name}, phone: ${state.phone}, delivery: ${state.delivery}'),
                duration: const Duration(seconds: 10),
              ));
              context.go('/');
            }
          },
          child: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Builder(builder: (context) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return Form(
                        child: Column(
                          children: [
                            PhoneDetails(model: model),
                            const SizedBox(
                              height: 20,
                            ),
                            const TitleWidget(title: 'Цвет'),
                            const ColorRadioGroup(),
                            const SizedBox(
                              height: 20,
                            ),
                            const UserInfo(),
                            const SizedBox(
                              height: 20,
                            ),
                            const TitleWidget(title: 'Доставка'),
                            const DeliveryRadioGroup(),
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Адрес почтового отделения'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TitleWidget(title: 'Примечания'),
                            const CallCheckbox(),
                            TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Комментарии',
                                  border: OutlineInputBorder()),
                              maxLines: 5,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.go('/');
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                    ),
                                    child: const Text('Отмена'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<OrderBloc>()
                                          .add(const CreateOrder());
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.green),
                                    ),
                                    child: const Text('Заказать'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class PhoneDetails extends StatelessWidget {
  const PhoneDetails({
    Key? key,
    required this.model,
  }) : super(key: key);

  final PhoneItem model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneTitle(model: model),
        const PhonePrice(),
      ],
    );
  }
}

class PhoneTitle extends StatelessWidget {
  const PhoneTitle({
    Key? key,
    required this.model,
  }) : super(key: key);

  final PhoneItem model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          model.image,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Text(model.title),
              Text(model.title),
            ],
          ),
        ),
      ],
    );
  }
}

class PhonePrice extends StatelessWidget {
  const PhonePrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(text: '100'),
          TextSpan(
            text: '\$',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatefulWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(title: 'Контактные данные'),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Имя',
          ),
          onChanged: (value) {
            context.read<OrderBloc>().add(GetUserName(value));
          },
        ),
        TextField(
            decoration: const InputDecoration(
              hintText: 'Телефон',
            ),
            onChanged: (value) {
              context.read<OrderBloc>().add(GetUserPhone(value));
            }),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Электронная почта',
          ),
          onChanged: (value) {
            context.read<OrderBloc>().add(GetUserEmail(value));
          },
        ),
      ],
    );
  }
}

class ColorRadioGroup extends StatelessWidget {
  const ColorRadioGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final values = [
      {'title': AppLocalizations.of(context).whiteColor, 'value': 'white'},
      {'title': AppLocalizations.of(context).blackColor, 'value': 'black'},
      {'title': AppLocalizations.of(context).blueColor, 'value': 'blue'},
      {'title': AppLocalizations.of(context).goldColor, 'value': 'gold'},
    ];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(0),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: values.map((value) {
            return Row(
              children: [
                Radio(
                  value: value['value'],
                  groupValue: context.watch<OrderBloc>().state.color,
                  onChanged: (value) {
                    context.read<OrderBloc>().add(GetProductColor(value!));
                  },
                ),
                Text(value['title'].toString())
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DeliveryRadioGroup extends StatelessWidget {
  const DeliveryRadioGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final values = [
      {'title': AppLocalizations.of(context).postOfficeDelivery, 'value': '0'},
      {'title': AppLocalizations.of(context).courierDelivery, 'value': '1'},
      {'title': AppLocalizations.of(context).pickupDelivery, 'value': '2'},
    ];
    return Column(
      children: values.map((value) {
        return RadioListTile(
          value: value['value'],
          groupValue: context.watch<OrderBloc>().state.delivery,
          onChanged: (value) {
            context.read<OrderBloc>().add(GetDeliveryMethod(value!));
          },
          title: Text(value['title']!),
        );
      }).toList(),
    );
  }
}

class CallCheckbox extends StatefulWidget {
  const CallCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<CallCheckbox> createState() => _CallCheckboxState();
}

class _CallCheckboxState extends State<CallCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      onChanged: (value) {
        setState(() => isChecked = value!);
        context.read()<OrderBloc>().add(GetNeedToCall(value!));
      },
      title: const Text('Не перезванивать'),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
