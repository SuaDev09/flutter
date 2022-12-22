import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://d7lju56vlbdri.cloudfront.net/var/ezwebin_site/storage/images/_aliases/img_1col/noticias/solar-orbiter-toma-imagenes-del-sol-como-nunca-antes/9437612-1-esl-MX/Solar-Orbiter-toma-imagenes-del-Sol-como-nunca-antes.jpg',
            name: 'El sol',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://ep01.epimg.net/elpais/imagenes/2021/12/10/album/1639143803_433213_1639745607_noticia_normal.jpg',
            name: 'Paisaje',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://ep01.epimg.net/elpais/imagenes/2019/10/30/album/1572424649_614672_1572453030_noticia_normal.jpg',
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
