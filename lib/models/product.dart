class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 156,
    title: "Fauteuil en velours abricot",
    image: "assets/images/Item_1.png",
    description:
        "Un fauteuil en cuir qui est non seulement beau mais indéniablement confortable",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Fauteuil en tissu bleu",
    image: "assets/images/Item_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
/***** PF Modification XX
  Product(
    id: 9,
    price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
*****/
];
