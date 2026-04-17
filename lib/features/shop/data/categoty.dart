class CategoryModel {
  final String title;
  final String image;
  CategoryModel({required this.title, required this.image});
}

final List<CategoryModel> categories = [
  CategoryModel(title: "Fashion", image: "assets/categories/fashion.png"),
  CategoryModel(title: "Vehicle", image: "assets/categories/vehicle.png"),
  CategoryModel(
      title: "Motorcycles", image: "assets/categories/motorcycle.png"),
  CategoryModel(title: "Services", image: "assets/categories/services.png"),
  CategoryModel(title: "Phones", image: "assets/categories/phones.png"),
  CategoryModel(title: "Animals", image: "assets/categories/animals.png"),
  CategoryModel(
      title: "Accessories", image: "assets/categories/accessories.png"),
  CategoryModel(
      title: "Woman's Accessories",
      image: "assets/categories/womans_accessories.png"),
  CategoryModel(
      title: "Home Appliances", image: "assets/categories/home_appliacnce.png"),
  CategoryModel(
      title: "Handmade & Crafts", image: "assets/categories/handmade.png"),
  CategoryModel(
      title: "Property for Sale",
      image: "assets/categories/property_for_sale.png"),
  CategoryModel(
      title: "Property for Rent",
      image: "assets/categories/property_for_rent.png"),
];
