import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/widgets/utils/link_item.dart';
import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1100) {
            return const LinksDesktop();
          } else {
            return const LinksMobile();
          }
        },
      ),
    );
  }
}

class LinksDesktop extends StatelessWidget {
  const LinksDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // LINKS
        Text(Strings.linksHeader,
            style: Theme.of(context).textTheme.titleMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Useful links
                  Text("Nyttiga länkar",
                      style: Theme.of(context).textTheme.titleSmall),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "PawPeds",
                    url: "http://www.pawpeds.com",
                    description: "har hälsoprogram och stamtavlor",
                  )),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "FindUs",
                    url: "https://stambok.sverak.se/",
                    description:
                        "SVERAKs stambok med alla stambokförda raskatter",
                  )),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "ID-registret",
                    url: "https://www.id-registret.se/",
                    description:
                        "Här kan du söka efter alla ID registrade katter",
                  )),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "Köpa katt",
                    url: "https://www.xn--kpakatt-90a.se/kattannonser/",
                    description:
                        "Här hittar du raskatter registrerade hos SVERAK som är till salu",
                  )),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "Jordbruksverket",
                    url:
                        "https://jordbruksverket.se/djur/hundar-katter-och-smadjur/katter",
                    description:
                        "Här finns lagar och regler som gäller för dig som kattägare.",
                  )),
                ],
              ),
            ),
            const SizedBox(width: 50),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // About the European catbreed
                  Text("Om Européen",
                      style: Theme.of(context).textTheme.titleSmall),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "Nationalkatten",
                    url: "https://www.nationalkatten.se",
                    description:
                        "Vår förening för att bevara och utveckla den svenska nationalkatten",
                  )),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "SVERAK - om Européen",
                    url:
                        "https://www.sverak.se/for-kattagare/raskatt/kattraser/europe/",
                    description:
                        "Rasstandard för Européen, samt lite annat smått och gott.",
                  )),
                  //Cat help organizations
                  Text("Katthjälpsorganisationer i närheten",
                      style: Theme.of(context).textTheme.titleSmall),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "Frusna tassar",
                    url: "https://frusnatassar.se/",
                    description: "Kattförening i Göteborg",
                  )),
                  LinkWithDescription(
                      linkItem: LinkItem(
                    title: "Katthjälpen",
                    url: "http://www.katthjalpen.se/",
                    description: "Kungälv & Stenungsund",
                  )),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class LinksMobile extends StatelessWidget {
  const LinksMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // LINKS
        Text(Strings.linksHeader,
            style: Theme.of(context).textTheme.titleMedium),
        // Useful links
        Text("Nyttiga länkar", style: Theme.of(context).textTheme.titleSmall),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "PawPeds",
          url: "http://www.pawpeds.com",
          description: "har hälsoprogram och stamtavlor",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "FindUs",
          url: "https://stambok.sverak.se/",
          description: "SVERAKs stambok med alla stambokförda raskatter",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "ID-registret",
          url: "https://www.id-registret.se/",
          description: "Här kan du söka efter alla ID registrade katter",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Köpa katt",
          url: "https://www.xn--kpakatt-90a.se/kattannonser/",
          description:
              "Här hittar du raskatter registrerade hos SVERAK som är till salu",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Jordbruksverket",
          url:
              "https://jordbruksverket.se/djur/hundar-katter-och-smadjur/katter",
          description:
              "Här finns lagar och regler som gäller för dig som kattägare.",
        )),

        // About the European catbreed
        Text("Om Européen", style: Theme.of(context).textTheme.titleSmall),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Nationalkatten",
          url: "https://www.nationalkatten.se",
          description:
              "Vår förening för att bevara och utveckla den svenska nationalkatten",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "SVERAK - om Européen",
          url: "https://www.sverak.se/for-kattagare/raskatt/kattraser/europe/",
          description:
              "Rasstandard för Européen, samt lite annat smått och gott.",
        )),

        //Cat help organizations
        Text("Katthjälpsorganisationer i närheten",
            style: Theme.of(context).textTheme.titleSmall),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Frusna tassar",
          url: "https://frusnatassar.se/",
          description: "Kattförening i Göteborg",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Katthjälpen",
          url: "http://www.katthjalpen.se/",
          description: "Kungälv & Stenungsund",
        )),
      ],
    );
  }
}

// TODO: Read linkitems from a list instead so there won't be doubles, fix headings
