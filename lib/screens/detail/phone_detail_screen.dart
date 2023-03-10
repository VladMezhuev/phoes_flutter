import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../catalog/phone_item_model.dart';

class PhoneDetailScreen extends StatelessWidget {
  const PhoneDetailScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  final PhoneItem model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text(model.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ProductTitle(title: model.title),
                        const ProductSubtitle(),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        ColorsTitle(),
                        ColorSquare(color: Colors.white,),
                        ColorSquare(color: Colors.black,),
                        ColorSquare(color: Colors.blue,),
                        ColorSquare(color: Colors.orange,),
                      ],
                    ),
                    ProductMainImage(image: model.image),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('100'),
                        ElevatedButton(
                          onPressed: () {
                            context.goNamed(
                              'order',
                              extra: model,
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.orange),
                          ),
                          child: const Text('????????????'),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SliderImage(path: Assets.images.slide2.path),
                    SliderImage(path: Assets.images.slide3.path),
                    SliderImage(path: Assets.images.slide5.path),
                    SliderImage(path: Assets.images.slide6.path),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CharacteristicHeader(title: '?? ????????????', subtitle: '???????????? ????????????????'),
                const SizedBox(
                  height: 10,
                ),
                const ProductDescription(),
                const SizedBox(
                  height: 20,
                ),
                const CharacteristicHeader(title: '????????????????????????????', subtitle: '?????? ????????????????????????????'),
                const TitleMd(name: '??????????',),
                const Characteristic(name: '?????????????????? ????????????', value: '5.1',),
                const Characteristic(name: '???????????????????? ????????????', value: '2560??1440',),
                const TitleMd(name: '????????????????????',),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '????????????????????',
                        style: textStyle,
                      ),
                      Text(
                        '????????????????????????, ????????????????\n????????????????, ????????????\n'
                            '??????????????????, ????????????\n??????????????????????, ????????????\n'
                            '??????????, ????????????, ????????????\n ?????????????????? ??????????????',
                        style: textStyle,
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                const Characteristic(name: '??????????????', value: '143 ?? 70.5 ?? 6.8????',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widgets

class ProductSubtitle extends StatelessWidget {
  const ProductSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'sm-a225fzkdsek'.toUpperCase(),
      style: const TextStyle(
          color: Colors.grey
      ),
    );
  }
}

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    );
  }
}

class ProductMainImage extends StatelessWidget {
  const ProductMainImage({
    Key? key,
    required this.image
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 170,
    );
  }
}

class ColorsTitle extends StatelessWidget {
  const ColorsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '????????',
      style: TextStyle(
          color: Colors.grey,
          fontSize: 14
      ),
    );
  }
}

class ColorSquare extends StatelessWidget {
  const ColorSquare({
    Key? key, required color
  }) : _color = color, super(key: key);

  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        color: _color,
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
            child: Text('?????????? ??????????????, ?????? ?? ????????????????, ?????????????????? ????????????????, ???????????????? ?? ?????????? ????????????.'
                '?????? ???????? ???? ?????? ??????????????, ?????????????? ?????????????????????????? ???? ???????????? ???? ?????????????? ???????? ???????????? ???? ?????????? ??????'
                '?????????????????? ???????????????????????????? ????????????????????????, ?????? ???????????????? ?????????????? ?????????????????????? ?????????? ???????????????? ??????????.',
              style: TextStyle(color: Colors.black, fontSize: 14),
            )
        ),
      ],
    );
  }
}

class CharacteristicHeader extends StatelessWidget {
  const CharacteristicHeader({
    Key? key,
    required title, required subtitle,
  }) : _title = title, _subtitle = subtitle, super(key: key);

  final String _title;
  final String _subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide( width: 1, color: Colors.black)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            _title,
            style: textStyleLg,
          ),
          Text(
              _subtitle,
              style: styledText
          ),
        ],
      ),
    );
  }
}

class Characteristic extends StatelessWidget {
  const Characteristic({
    Key? key,
    required name, required value,
  }) : _name = name, _value = value, super(key: key);

  final String _name;
  final String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _name,
            style: textStyle,
          ),
          Text(
              _value,
              style: textStyle
          )
        ],
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
    required String path,
  }) : _path = path, super(key: key);

  final String _path;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(_path),
      height: 120,
    );
  }
}

class TitleMd extends StatelessWidget {
  const TitleMd({
    Key? key,
    required String name,
  }) : _name = name, super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Text(
            _name,
            style: textStyleMd,
          ),
        ],
      ),
    );
  }
}

// Styles

const TextStyle textStyle = TextStyle(
    color: Colors.black,
    fontSize: 14
);

const TextStyle textStyleMd = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold
);

const TextStyle textStyleLg = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold
);

const TextStyle styledText = TextStyle(
  fontStyle: FontStyle.italic,
  color: Colors.cyan,
  fontSize: 14,
);
