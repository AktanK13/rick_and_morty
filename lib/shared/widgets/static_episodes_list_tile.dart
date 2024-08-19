import 'package:flutter/material.dart';
import 'package:rick_and_morty/shared/widgets/episodes_list_tile.dart';

class StaticEpisodesListTile extends StatelessWidget {
  const StaticEpisodesListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        EpisodeTile(
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/2a13/1e79/0f0023c3c0eb26ebfc64859ba82c3e88?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jkk3bRqQw6iTNTVMsvEO9yRKm~BH2SlMb7zAwpT84uiw-W4BCu~II0mpFkghNVWlqTWMlkC4IwNh-kPdRNg1gumujblSDzgH3V~VOmFZ6PG64LVKFaELUCTtjMHwW8x6Xrlj-ajVjshCJ~F1--k6GLqRiMz7uW97xvq~fwk9rqiCQcNiiCYH4bZDUSLPpEmN5KKMTfigJlchCYlGeH6tvWOhi8Jz5BVxdZ0HkmkzzTGzWEnce0coA3odlTRFQHWDBrYtbEa7kSktnC-O9BYreRbEj0bQwOYzAVyJsc1HLWhzXO1o0jBYHSU8mrSu9-Gehd476AA0qYAU16b05HyzVQ__",
          episodeNumber: "Серия 1",
          episodeTitle: "Пилот",
          releaseDate: "2 декабря 2013",
        ),
        SizedBox(
          height: 24,
        ),
        EpisodeTile(
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/5f60/b87d/2db30f6c50b8740bb28ab182e8f7e85a?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nYCyyB-77iYMV4jQwNonYDYId7M397uz~hbSxbR6r4sQywcPm-tFIva~-qHnMyRVZ04I~lhasHle8MJJZJCgt9F7nL2Gc8f6RSiz0NopEjDQVp2VvL-FY8H3LNrbLJlb~KnenxftWJ4we14vJZOf9-XNUjvn-DvCzIizMk4sPGTXzWsf9rRuE5gxCHoDWVweT5H0Zh~3JcRV6aZ-~aElLUIcttdXglby3ShljSW8WcrFrNkgt4yTG9tRJ4OWjrJv2I-B5VwBJjpiL4sKW5r9IkJ8kwW0spon3dOvOZmpt~0V6T5tYnVJUq7vZ8e7teRh8mhD9WldAeRK2aFe0Od3nw__",
          episodeNumber: "Серия 2",
          episodeTitle: "Пёс-газонокосильщик",
          releaseDate: "9 декабря 2013",
        ),
        SizedBox(
          height: 24,
        ),
        EpisodeTile(
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/2f48/b4fd/9634d4d6a1bb3a82485b5bb4052a0a4c?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gF1q1j9JVF~MEhYdvDSAvcGEJeJ0lSDg3SJqcTDJf61rQlbEKHUh63Ra4--hkXu1K7xsYX~Me0vQUf7Z1GSfhrd9eC7TYe5sU~UpQOg9MOHlowZIKX7woEGe9Z2H0mLi6tu2AHB8D977YYr2pnyMmqmzJuUv2X7XUGEJt6oGpzDmkOqMSVuENjv4K8Q~WVgqOvOglirrcPEgFgsEmoqwGeLKVQLPSzE-HuWsBAANi1XP0tAusdmiaj8JC5JWpW~mdcFQ2GG7WxECAH0lK0NDFw19EQv9r5kT-n2lBet84-SnjeVsRhqHwqPHWfAz9NjeQNCm-NHQ9Q9cGDQoKITNYg__",
          episodeNumber: "Серия 3",
          episodeTitle: "Анатомический парк",
          releaseDate: "16 декабря 2013",
        ),
        SizedBox(
          height: 24,
        ),
        EpisodeTile(
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/debe/f506/25ae7b92bf5073848af59370e93421eb?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OGKGBuYM5nJQI6dZUAYTXDz2B0ScPQU9duhEYs2vUPWdQMUVA9DWaS~Ably9mpcKrTUnMzeZ84iFsiECfLvZ8XTWRwJTbmeBFB9YcRcLupqeIihQMQblq27miPHhM0a8r0rq368T4I~MMM4~Pye1WzUJu-L8itL9aLdcBbUihcGhS0kgGMts9CE8rIKJN3NAOAKT46Y9tUnP1~v1VI1fyXWrGV2QN87qEwrWEdxpBQrN0r2Mzpw8Roxm1BcqV5QMU3tc7LaiEAnJDdm1fkH-JUIUrC2TDvcfMIVF1jEmZsllBZb-E8uSsaDLigWaoSdkZMjYFYAN3VoZE5Xgom6-9g__",
          episodeNumber: "Серия 4",
          episodeTitle: "Анатомический парк",
          releaseDate: "23 декабря 2013",
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
