import 'package:flutter/material.dart';
import 'package:shoesapp/helpers/herlpers.dart';
import 'package:shoesapp/widgets/custom_widgets.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusDark();
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppbar(
            textAppbar: 'For you',
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Hero(
                    child: ShoesSizePreview(),
                    tag: 'shoesHero',
                  ),
                  ShoesDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  ShoesDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
          ShoesCart(
            shoesValue: 180.0,
            buttonText: 'Add to cart',
            buttonWidth: 20.0,
          ),
        ],
      ),
    );
  }
}
