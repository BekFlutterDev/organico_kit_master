import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:organico_kit_master/components/sizeconfig.dart';
import 'package:provider/provider.dart';
import '../../core/color_const.dart';
import '../../provider/them_provider.dart';
import 'widget/category_details_widget.dart';
import 'widget/streem_builder_category_widget.dart';

class CategoryDetailPage extends StatelessWidget {
  final String? name;
  final int? index1,index2;
  const CategoryDetailPage({Key? key, this.index1,this.index2, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var textColor = context.watch<DarkVsLightProvider>().textColor;
    return FadeInUp(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: he(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: textColor),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: textColor),
                    ),
                  ],
                ),
              ),
              StreemBuilderForCategoryWidget(name: name,index1: index1,index2: index2),
               CategoryDetailsWidget(indexx: index1),

              Padding(
                padding: EdgeInsets.only(top: he(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(280, 50),
                        backgroundColor: ConstColor.buttomColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "nunito"),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(5, 55),
                        backgroundColor: ConstColor.greeyColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Icon(
                        Icons.chat_outlined,
                        color: textColor,
                        size: 20,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
