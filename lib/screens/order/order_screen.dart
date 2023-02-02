import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_app/data/order_repo.dart';
import 'package:phone_app/di.dart';
import 'package:phone_app/screens/catalog/phone_item_model.dart';
import 'package:phone_app/screens/order/order_bloc/order_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import '../../gen/assets.gen.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key, required this.model}) : super(key: key);

  final PhoneItem model;
  final orderRepository = GetIt.instance<OrderRepository>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrderBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order Screen'),
        ),
        body: BlocListener<OrderBloc, OrderState>(
          listener: (context, state) {
            if (state.orderCreated) {
              showDialog(
                context: context,
                builder: (context) {
                  return const OrderDialog();
                },
              );
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
                            TitleWidget(
                                title: AppLocalizations.of(context)
                                    .colorBlockTitle),
                            ColorRadioGroup(currentRadio: state.color),
                            const SizedBox(
                              height: 20,
                            ),
                            const UserInfo(),
                            const SizedBox(
                              height: 20,
                            ),
                            TitleWidget(
                                title: AppLocalizations.of(context)
                                    .deliveryBlockTitle),
                            DeliveryRadioGroup(currentMethod: state.delivery),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)
                                      .deliveryAddressHintInput),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TitleWidget(
                                title: AppLocalizations.of(context)
                                    .notesBlockTitle),
                            const CallCheckbox(),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)
                                      .commentsHintInput,
                                  border: const OutlineInputBorder()),
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
                                    child: Text(AppLocalizations.of(context)
                                        .cancelButton),
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
                                    child: Text(AppLocalizations.of(context)
                                        .orderButton),
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

class OrderDialog extends StatelessWidget {
  const OrderDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.close),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.infoCircle,
                  width: 130,
                  height: 130,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Информационный диалог',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Заказ успешно создан',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, 50),
                      elevation: 0,
                      side: const BorderSide(
                          color: Colors.orange, width: 1),
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'Ok'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
        TitleWidget(title: AppLocalizations.of(context).contactsBlockTitle),
        TextField(
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context).nameHintInput,
          ),
          onChanged: (value) {
            context.read<OrderBloc>().add(GetUserName(value));
          },
        ),
        TextField(
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context).phoneHintInput,
            ),
            onChanged: (value) {
              context.read<OrderBloc>().add(GetUserPhone(value));
            }),
        TextField(
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context).emailHintInput,
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
  const ColorRadioGroup({Key? key, required this.currentRadio})
      : super(key: key);

  final String currentRadio;

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
                  groupValue: currentRadio,
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
  const DeliveryRadioGroup({Key? key, required this.currentMethod})
      : super(key: key);

  final String currentMethod;

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
          groupValue: currentMethod,
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
      title: Text(AppLocalizations.of(context).callMe),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
