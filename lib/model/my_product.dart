import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garden_app/model/models.dart';

class Myproducts {
  static List<CategoryModel> categoryList = [
    CategoryModel(index: 0, name: 'All'),
    CategoryModel(index: 1, name: 'Indoor'),
    CategoryModel(index: 2, name: 'Outdoor'),
    CategoryModel(index: 3, name: 'Cactus'),
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
        child: Icon(CupertinoIcons.add, color: Colors.white),
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


/*
  static List<Product> allindoorproduct = [
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
    ),
    Product(
      id: 1,
      name: 'Indoor Plant',
      category: 2,
      image: 'assets/indoor/2.png',
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
    ),
    Product(
      id: 1,
      name: 'Lim Plant',
      category: 2,
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
    ),
  
  ];

  static List<Product> alloutdoorProducts = [
    Product(
      id: 1,
      name: 'Joy Plant',
      category: 2,
      image: 'assets/outdoor/1.png',
      description:
          "The plant in the image has large, oval leaves that are variegated with green and white markings. The leaves grow from a central stem and can reach up to several feet in length Place your dieffenbachia in a spot that receives bright, indirect light. Avoid direct sunlight, which can scorch the leaves of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
    ),
    Product(
      id: 1,
      name: 'Jade Plant',
      category: 2,
      image: 'assets/outdoor/2.png',
      description:
          "The plant in the image has large, oval leaves that are variegated with green and white markings. The leaves grow from a central stem and can reach up to several feet in length Place your dieffenbachia in a spot that receives bright, indirect light. Avoid direct sunlight, which can scorch the leaves of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
    ),
    Product(
      id: 1,
      name: 'Ken Plant',
      category: 2,
      image: 'assets/outdoor/3.png',
      description:
          "The plant in the image has large, oval leaves that are variegated with green and white markings. The leaves grow from a central stem and can reach up to several feet in length Place your dieffenbachia in a spot that receives bright, indirect light. Avoid direct sunlight, which can scorch the leaves of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
    ),
    Product(
      id: 1,
      name: 'End Plant',
      category: 2,
      image: 'assets/outdoor/4.png',
      description:
          "The plant in the image has large, oval leaves that are variegated with green and white markings. The leaves grow from a central stem and can reach up to several feet in length Place your dieffenbachia in a spot that receives bright, indirect light. Avoid direct sunlight, which can scorch the leaves of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
    ),
    Product(
      id: 1,
      name: 'Sen Plant',
      category: 2,
      image: 'assets/outdoor/5.png',
      description:
          "The plant in the image has large, oval leaves that are variegated with green and white markings. The leaves grow from a central stem and can reach up to several feet in length Place your dieffenbachia in a spot that receives bright, indirect light. Avoid direct sunlight, which can scorch the leaves of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
    ),
    Product(
      id: 1,
      name: 'John Plant',
      category: 2,
      image: 'assets/outdoor/6.png',
      description:
          "The plant in the image has large, oval leaves that are variegated with green and white markings. The leaves grow from a central stem and can reach up to several feet in length Place your dieffenbachia in a spot that receives bright, indirect light. Avoid direct sunlight, which can scorch the leaves of the spathe Flamingo flowers come in a variety of colors, including pink, white, and purple, but red is the most common.",
      price: 200,
      quantity: 1,
      icon: const CircleAvatar(
        backgroundColor: Color(0xffB5C9AD),
        radius: 12,
        child: Icon(CupertinoIcons.add, color: Colors.white),
      ),
      image1: 'assets/starrate.png',
    ),
  ];
*/
}
