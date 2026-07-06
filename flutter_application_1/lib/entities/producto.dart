class Product {
  List<String> nombres;
  List<String> descripciones;
  List<String> imagenes;

  Product({
    required this.nombres,
    required this.descripciones,
    required this.imagenes,
  });
}

// Lista de flores predefinidas
final Product flores = Product(
  nombres: ["Rosa", "Tulipán", "Girasol"],
  descripciones: [
    "Flor clásica de pétalos rojos, símbolo del amor.",
    "Flor elegante de colores variados, muy popular en primavera.",
    "Flor amarilla grande que sigue la luz del sol.",
  ],
  imagenes: [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Rosa_Red_Chateau01.jpg/960px-Rosa_Red_Chateau01.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYggvXC1TFJWojWR2rSxJKjS-rZJrq2HZ75NJ3QV-RjA&s=10",
    "https://upload.wikimedia.org/wikipedia/commons/a/a9/A_sunflower.jpg",
  ],
);
