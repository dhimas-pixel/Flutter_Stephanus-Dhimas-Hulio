import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:section_26/screen/widgets/widgets.dart';
import 'package:section_26/stores/food_enum.dart';
import 'package:section_26/stores/food_viewModel.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final foodProvider = Provider.of<FoodViewModel>(context);

    return Scaffold(
      appBar: const SetAppBar(title: "Food Menu"),
      backgroundColor: const Color(0xFFFFCF7F),
      body: Consumer<FoodViewModel>(
        builder: (context, state, child) {
          if (state.stateType == FoodStateType.loading) {
            return Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.white,
                size: 60,
              ),
            );
          }
          if (state.stateType == FoodStateType.error) {
            return Center(
              child: Image.asset(
                "assets/images/error.png",
                height: 250,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (ctx, i) {
                return SetGridCard(
                    image: foodProvider.getPictFood[i].image,
                    title: foodProvider.getDataFood[i].nameFood);
              },
              itemCount: foodProvider.getDataFood.length,
            ),
          );
        },
      ),
    );
  }
}
