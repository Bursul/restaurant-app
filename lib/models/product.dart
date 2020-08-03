class Product {
  int id;
  String name;
  String description;
  String imageUrl;
  String price;
  int rating;
  double categoryId;
  String ingredients;

  Product(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.rating,
      this.ingredients});
}

List<Product> products = [
  Product(
      id: 1,
      name: "Burger 1",
      price: "20 lei",
      description: " aaaaaaaaaaa aaaaa",
      imageUrl: "assets/negresa_vegana.jpg",
      rating: 5,
      categoryId: 0),
  Product(
      id: 2,
      name: "Burger 2",
      price: "25 lei",
      description: "aaaaa;.aaaaaaaaaaa aaaaa",
      imageUrl: "assets/negresa_vegana.jpg",
      rating: 5,
      categoryId: 1),
  Product(
      id: 3,
      name: "Burger 3",
      price: "23 lei",
      description: "aaaaa;.aaaaaaa aaa.aaaaaaaaa",
      imageUrl: "assets/negresa_vegana.jpg",
      rating: 5,
      categoryId: 1),
  Product(
      id: 4,
      name: "Burger 4",
      price: "26 lei",
      description: "aaaaaa",
      imageUrl: "assets/negresa_vegana.jpg",
      rating: 5,
      categoryId: 1),
  Product(
      id: 1,
      name: "Burger 1",
      price: "20 lei",
      description: "asdasda",
      imageUrl: "assets/negresa_vegana.jpg",
      rating: 5,
      categoryId: 2),
  Product(
      id: 2,
      name: "Burger 2",
      price: "25 lei",
      description: "aaaaa;.aaaaaaa aaa.aaaa aaaaaaaaaaa aaaaa",
      imageUrl: "assets/negresa_vegana.jpg",
      rating: 5,
      categoryId: 3),
];
