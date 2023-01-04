class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/dress.svg",
    title: "Лекарство",
  ),
  Category(
    icon: "assets/icons/shirt.svg",
    title: "Таблетки",
  ),
  Category(
    icon: "assets/icons/pants.svg",
    title: "Препараты",
  ),
  Category(
    icon: "assets/icons/Tshirt.svg",
    title: "",
  ),
];
