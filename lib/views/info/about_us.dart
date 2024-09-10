import 'package:d20katter/constants/strings.dart';
import 'package:d20katter/widgets/utils/header_container.dart';
import 'package:d20katter/widgets/utils/link_item.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderContainerM(headerText: Strings.aboutUsHeader),
        Text(Strings.aboutUsD20, style: Theme.of(context).textTheme.bodyMedium),
        Text(Strings.aboutUsBody,
            style: Theme.of(context).textTheme.bodyMedium),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 200),
            child: Image.asset('images/stoned20.png'),
          ),
        ),
        Text("Medlemmar i:", style: Theme.of(context).textTheme.titleSmall),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Fife",
          url: "https://fifeweb.org/",
          description: "Federation Internationale Féline",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "SVERAK",
          url: "https://www.sverak.se/",
          description:
              "Sveriges kattförbund som i sin tur är anslutna till Fife.",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Ädelkatten",
          url: "https://adelkatten.se/",
          description:
              "Vår lokala kattförening, bunden till SVERAK, som arrangerar kattutställningar, events och sköter det administrativa.",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Nationalkatten Europé",
          url: "https://www.nationalkatten.se/",
          description:
              "Här är vi med i styrelsen och jobbar för att uppmärksamma och bevara Sveriges nationalras.",
        )),
        LinkWithDescription(
            linkItem: LinkItem(
          title: "Européringen",
          url: "https://europeringen.se/",
          description: "En föreningen för Européen med gamla anor.",
        )),
      ],
    ));
  }
}




//TODO: Make image shrink when screen is smaller

/*
 Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Medlemmar i:",
                          style: Theme.of(context).textTheme.titleSmall),
                      LinkWithDescription(
                          linkItem: LinkItem(
                        title: "Fife",
                        url: "https://fifeweb.org/",
                        description: "Federation Internationale Féline",
                      )),
                      LinkWithDescription(
                          linkItem: LinkItem(
                        title: "SVERAK",
                        url: "https://www.sverak.se/",
                        description:
                            "SVERAK - Sveriges kattforbund som i sin tur är anslutna till Fife.",
                      )),
                      LinkWithDescription(
                          linkItem: LinkItem(
                        title: "Ädelkatten",
                        url: "https://adelkatten.se/",
                        description:
                            "Vår lokala kattförening, bunden till SVERAK, som arrangerar kattutställningar, events och sköter det administrativa.",
                      )),
                      LinkWithDescription(
                          linkItem: LinkItem(
                        title: "Nationalkatten Europé",
                        url: "https://www.nationalkatten.se/",
                        description:
                            "Här är vi med i styrelsen och jobbar för att uppmärksamma och bevara Sveriges nationalras.",
                      )),
                      LinkWithDescription(
                          linkItem: LinkItem(
                        title: "Européringen",
                        url: "https://europeringen.se/",
                        description:
                            "En föreningen för Européen med gamla anor.",
                      )),
                    ]),
              ),
              Flexible(
                  flex: 1,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 200),
                    child: Image.asset('images/stoned20.png'),
                  ))
            ]),
            */