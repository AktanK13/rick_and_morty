import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const image =
        "https://s3-alpha-sig.figma.com/img/68d8/7089/d36f153442643543e91adfb999cbcc8f?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EszimM~Zgwf9bs3iYuwAYXIHAd6AkVIwvaexF5zoo3o4ziVAGKPh-iMiB2M5DerUEmRElY-pzL4UOVB-aKOIeOotaW8SIq92OzbzLWEN9SuYcMnfumT0McfQylyiZDtR6xwAVdM-9bN3yMs4rg55LXFF5iSPKsD0wderUVc5MRssN5EGKEVmIhtjyg1LUaz1TnMwkNTBbDBdj8TkTFPk16SDRyIzzwYgO6zvfyl1hT5DSdUjYUjKshEy7pyeuMRpaKo-pxVwN0PLEzJ1FxOqbE8kH5qMGS4V5l53fteRqqqLV-O9bQBovggGoakP~FirEdwwECC~5RZ96VNSHmtmlg__";
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(image),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Oleg Belotserkovsky',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Rick',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: AppColors.textGray),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Tooltip(
            message: 'This button is under development',
            child: ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style,
              onPressed: null,
              child: Text(LocaleKeys.edit.tr()),
            ),
          ),
        ),
      ],
    );
  }
}
