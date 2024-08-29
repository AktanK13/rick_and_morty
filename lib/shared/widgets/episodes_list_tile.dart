import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

class EpisodeTile extends StatelessWidget {
  final String imageUrl;
  final String episodeNumber;
  final String episodeTitle;
  final String releaseDate;

  const EpisodeTile({
    super.key,
    required this.imageUrl,
    required this.episodeNumber,
    required this.episodeTitle,
    required this.releaseDate,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      visualDensity: const VisualDensity(vertical: 4),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          imageUrl,
          width: 74,
          height: 74,
          fit: BoxFit.fitHeight,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            episodeNumber,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.buttonActive),
          ),
          Text(
            episodeTitle,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
      subtitle: Text(
        releaseDate,
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: AppColors.textGray),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
