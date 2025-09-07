import 'dart:math' as math;

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:test_items_list/presentation/pages/item/item_page.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_bloc.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_state.dart';
import 'package:test_items_list/presentation/pages/items_list/widgets/card_tile.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsListBloc, ItemsListState>(
      builder: (context, state) => Center(
        child: CustomMaterialIndicator(
          onRefresh: () async =>
              context.read<ItemsListBloc>().add(RefreshPage()), // Your refresh logic
          backgroundColor: Colors.white,
          indicatorBuilder: (context, controller) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
                value: controller.state.isLoading ? null : math.min(controller.value, 1.0),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
              slivers: [
                state.isLoading
                    ? SliverFillRemaining(
                        child: LoadingAnimationWidget.flickr(
                          leftDotColor: Colors.grey,
                          rightDotColor: Colors.pink,
                          size: 40,
                        ),
                      )
                    : state.errorMessage != null
                        ? SliverFillRemaining(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(state.errorMessage!, textAlign: TextAlign.center),
                                TextButton(
                                  onPressed: () => context.read<ItemsListBloc>().add(RefreshPage()),
                                  child: const Text('Try again'),
                                ),
                              ],
                            ),
                          )
                        : SliverList(
                            delegate: SliverChildBuilderDelegate(
                              childCount: state.items.length,
                              (context, index) {
                                if (index == state.items.length - 4) {
                                  WidgetsBinding.instance.addPostFrameCallback((_) {
                                    context.read<ItemsListBloc>().add(GetMoreItems());
                                  });
                                }
                                return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                                    child: CardTile(
                                      item: state.items[index],
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemPage(item: state.items[index]),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
