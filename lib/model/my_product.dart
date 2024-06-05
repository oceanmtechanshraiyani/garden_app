import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garden_app/model/models.dart';

class Myproducts {
  static List<CategoryModel> categoryList = [
    CategoryModel(
      index: 0,
      name: 'All',
    ),
    CategoryModel(
      index: 1,
      name: 'Indoor',
    ),
    CategoryModel(
      index: 2,
      name: 'Outdoor',
    ),
    CategoryModel(
      index: 3,
      name: 'Cactus',
    ),
  ];
  static List<Product> allProducts = [
    Product(
      id: 1,
      name: 'Jade Plant',
      category: 1,
      image: 'assets/splash.png',
      description:
          "The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships  The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial",
      price: 2500,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Tree Plant',
      category: 2,
      image: 'assets/two.png',
      description:
          "The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships  The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial",
      price: 2500,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Opee Plant',
      category: 3,
      image: 'assets/indoor/3.png',
      description:
          "The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships  The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial",
      price: 2500,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Sem Plant',
      category: 2,
      image: 'assets/splash.png',
      description:
          "The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships  The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial",
      price: 2500,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Tree Plant',
      category: 3,
      image: 'assets/two.png',
      description:
          "The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships  The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial",
      price: 2500,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Ocean Plant',
      category: 2,
      image: 'assets/indoor/3.png',
      description:
          "The String of Pearls is a geopolitical hypothesis proposed by United States political researchers in 2004. The term refers to the network of Chinese military and commercial facilities and relationships  The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial The term refers to the network of Chinese military and commercial",
      price: 2500,
      quantity: 3,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Jade Plant',
      category: 2,
      image: 'assets/indoor/1.png',
      description:
          "Flamingo flowers are tropical plants native to South America, known for their vibrant red, heart-shaped flowers, which are actually modified leaves called spathes. The true flowers are tiny and grow on a stalk called the spadix, which protrudes from the center of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Indoor Plant',
      category: 1,
      image: 'assets/indoor/2.png',
      description:
          "Flamingo flowers are tropical plants native to South America, known for their vibrant red, heart-shaped flowers, which are actually modified leaves called spathes. The true flowers are tiny and grow on a stalk called the spadix, which protrudes from the center of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 3,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Sam Plant',
      category: 2,
      image: 'assets/indoor/3.png',
      description:
          "Flamingo flowers are tropical plants native to South America, known for their vibrant red, heart-shaped flowers, which are actually modified leaves called spathes. The true flowers are tiny and grow on a stalk called the spadix, which protrudes from the center of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
    Product(
      id: 1,
      name: 'Lim Plant',
      category: 1,
      image: 'assets/indoor/4.png',
      description:
          "Flamingo flowers are tropical plants native to South America, known for their vibrant red, heart-shaped flowers, which are actually modified leaves called spathes. The true flowers are tiny and grow on a stalk called the spadix, which protrudes from the center of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 500,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
      islike: true,
      isLikeSelectedIndex: false,
    ),
  ];
}
