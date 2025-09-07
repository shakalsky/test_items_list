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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              state.isLoading
                  ? Center(
                      child: LoadingAnimationWidget.flickr(
                        leftDotColor: Colors.grey,
                        rightDotColor: Colors.pink,
                        size: 40,
                      ),
                    )
                  : Expanded(
                      child: state.errorMessage != null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(state.errorMessage!, textAlign: TextAlign.center),
                                TextButton(
                                  onPressed: () => context.read<ItemsListBloc>().add(RefreshPage()),
                                  child: const Text('Try again'),
                                ),
                              ],
                            )
                          : ListView.separated(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              itemCount: state.items.length,
                              itemBuilder: (context, index) => CardTile(
                                item: state.items[index],
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ItemPage(item: state.items[index]),
                                  ),
                                ),
                              ),
                              separatorBuilder: (context, index) => const SizedBox(height: 12.0),
                            ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
