import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:test_items_list/domain/entities/item_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CardTile extends StatelessWidget {
  final ItemEntity item;
  final VoidCallback onTap;

  const CardTile({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Theme.of(context).colorScheme.surfaceBright,
        ),
        height: 150.0,
        child: Row(
          children: [
            SizedBox(
              width: 150.0,
              child: CachedNetworkImage(
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.name ?? 'unknown',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
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
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Last known location:',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          item.location?.name ?? '(?)',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'First seen in episode: ${RegExp(r'episode/(\d+)').firstMatch(item.episode?.firstOrNull ?? '(?)')?.group(1) ?? '(?)'}',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
