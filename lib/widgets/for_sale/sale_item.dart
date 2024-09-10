class SaleItem {
  final String name;
  final DateTime date;
  final String ems;
  final String info;
  final String imageURL;
  final String? link;

  SaleItem({
    required this.name,
    required this.date,
    required this.ems,
    required this.info,
    required this.imageURL,
    this.link,
  });
}

List<SaleItem> saleItems = [
  SaleItem(
      name: "D20's Paw-kward Gelatinous Cube",
      ems: "EUR d24 - röd spotted",
      date: DateTime(2024, 6, 24),
      info:
          "Jelly är en liten busig kille, lite försiktig men älskar att smyga och leka.",
      imageURL:
          "d20cats%2FMonsterLitter%2FGelly%2FIMG_2491.jpg?alt=media&token=735ebdaa-35bf-4863-b33a-c87972872276"),
  SaleItem(
      name: "D20's Purr-suasive Beholder",
      ems: "EUR d(22) - solid röd",
      date: DateTime(2024, 6, 24),
      info:
          "Belly är en supergosig kille som älskar magkli och purrar högljutt när han blir klappad. Han söker mycket närhet och vill gärna vara i famnen.",
      imageURL:
          "d20cats%2FMonsterLitter%2FBelly%2FIMG_2463.jpg?alt=media&token=d06e4c70-45b6-4874-8952-cd239ab37b2f"),
];
