import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:test_items_list/domain/entities/item_entity.dart';

class ItemPage extends StatelessWidget {
  final ItemEntity item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name ?? 'unknown'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400.0,
            child: CachedNetworkImage(
              filterQuality: FilterQuality.high,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                ),
              ),
              imageUrl: item.image ?? '',
              placeholder: (context, url) => LoadingAnimationWidget.threeRotatingDots(
                color: Colors.grey,
                size: 40,
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 12,
                        color: switch (item.status) {
                          ItemStatus.alive => Colors.green,
                          ItemStatus.dead => Colors.red,
                          ItemStatus.unknown => Colors.grey,
                        },
                      ),
                      SizedBox(width: 4),
                      Text(item.status.name),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    'First seen in episode: ${RegExp(r'episode/(\d+)').firstMatch(item.episode?.firstOrNull ?? '(?)')?.group(1) ?? '(?)'}',
                  ),
                  Text(
                    'Type: ${item.type?.isNotEmpty == true ? item.type : 'unknown'}',
                  ),
                  Text(
                    'Gender: ${item.gender?.isNotEmpty == true ? item.gender : 'unknown'}',
                  ),
                  Text(
                    'Origin: ${item.origin?.name?.isNotEmpty == true ? item.origin?.name : 'unknown'}',
                  ),
                  Text(
                    'Location: ${item.location?.name?.isNotEmpty == true ? item.location?.name : 'unknown'}',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
