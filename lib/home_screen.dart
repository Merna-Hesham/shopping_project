import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utils/localization_helper.dart';
import 'l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> featuredImages = [
    {
      "image": "t-shirts",
      "title": "featured_t_shirts"
    },
    {
      "image": "collection3",
      "title": "featured_sweaters"
    },
    {
      "image": "jeans_pants",
      "title": "featured_jeans"
    },
  ];

  final List<Map<String, String>> products = [
    {
      "title": "product_beige_cardigan",
      "price": "price_600",
      "image": "beige_cardigan"
    },
    {
      "title": "product_beige_sweater",
      "price": "price_700",
      "image": "beige_sweater"
    },
    {
      "title": "product_black_bag",
      "price": "price_1000",
      "image": "black_bag"
    },
    {
      "title": "product_beige_boots",
      "price": "price_1200",
      "image": "boots"
    },
    {
      "title": "product_tshirt",
      "price": "price_300",
      "image": "t-shirt"
    },
    {
      "title": "product_jeans_jacket",
      "price": "price_1600",
      "image": "jeans_jacket"
    },
    {
      "title": "product_green_sweater",
      "price": "price_700",
      "image": "green_sweater"
    },
    {
      "title": "product_brown_jacket",
      "price": "price_1200",
      "image": "brown_jacket"
    },
    {
      "title": "product_red_heels",
      "price": "price_1000",
      "image": "red_heels"
    },
    {
      "title": "product_shoes",
      "price": "price_2000",
      "image": "shoes1"
    },
  ];

  final List<Map<String, String>> hotOffers = [
    {
      "deal": "offer_buy2get1",
      "desc": "offer_accessories",
      "image": "accessories"
    },
    {
      "deal": "offer_buy1get50",
      "desc": "offer_heels",
      "image": "beige_heels"
    },
    {
      "deal": "offer_50_tshirts",
      "desc": "offer_tshirts",
      "image": "t-shirts2"
    },
    {
      "deal": "offer_bundle",
      "desc": "offer_collection",
      "image": "collection1"
    },
    {
      "deal": "offer_free_shipping",
      "desc": "offer_shipping",
      "image": "free_delivery"
    },
  ];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFB9375D),
        title: Text(
          AppLocalizations.of(context)!.ourProducts,
          style: const TextStyle(
            fontSize: 32,
            fontFamily: "Suwannaphum",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.shopCollection,
                style: const TextStyle(
                  fontSize: 28,
                  fontFamily: "Suwannaphum",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB9375D),
                ),
              ),

              const SizedBox(height: 10),

              Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: featuredImages.length,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    "assets/images/${featuredImages[index]["image"]!}.jpg",
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        context.tr(featuredImages[index]["title"]!),
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontFamily: "Suwannaphum",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 4,
                                              color: Color(0xFFD25D5D),
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white
                            ),
                            iconSize: 30,
                            onPressed: () {
                              if (_pageController.page! > 0) {
                                _pageController.previousPage(
                                  duration:
                                  const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white
                            ),
                            iconSize: 30,
                            onPressed: () {
                              if (_pageController.page! <
                                  featuredImages.length - 1) {
                                _pageController.nextPage(
                                  duration:
                                  const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  SmoothPageIndicator(
                    controller: _pageController,
                    count: featuredImages.length,
                    effect: const WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      activeDotColor: Color(0xFFB9375D),
                      dotColor: Colors.grey,
                    ),
                    onDotClicked: (index) {
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Text(
                AppLocalizations.of(context)!.featuredProducts,
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: "Suwannaphum",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB9375D),
                ),
              ),

              const SizedBox(height: 10),

              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color(0xFFE7D3D3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(16),
                                  bottom: Radius.circular(6),
                                ),
                                child: Image.asset(
                                  "assets/images/${products[index]["image"]!}.jpg",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),

                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xFFEEEEEE),
                                    child: IconButton(
                                      icon: const Icon(Icons
                                          .add_shopping_cart_rounded),
                                      color: const Color(0xFFB9375D),
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    IconButton(
                                                      icon: const Icon(
                                                          Icons.shopping_cart_outlined
                                                      ),
                                                      color: Colors.white,
                                                      onPressed: () {},
                                                    ),

                                                    Text(
                                                      AppLocalizations.of(context)!.addToCart,
                                                      style: const TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: "Suwannaphum",
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                                  child: Text(
                                                    AppLocalizations.of(context)!.addedToCart(context.tr(products[index]["title"]!),),
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: "Suwannaphum",
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            duration: const Duration(
                                                seconds: 2),
                                            backgroundColor:
                                            const Color(0xFFB9375D),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text(
                            context.tr(products[index]["title"]!),
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: "Suwannaphum",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFB9375D),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: Text(
                          context.tr(products[index]["price"]!),
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "Suwannaphum",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFD25D5D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.local_fire_department_rounded),
                    color: const Color(0xFFD25D5D),
                    iconSize: 36,
                    onPressed: () {},
                  ),

                  const SizedBox(width: 2),

                  Text(
                    AppLocalizations.of(context)!.hotOffers,
                    style: const TextStyle(
                      fontSize: 28,
                      fontFamily: "Suwannaphum",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB9375D),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: hotOffers.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Card(
                      color: const Color(0xFFE7D3D3),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(16),
                                  bottom: Radius.circular(6),
                                ),
                                child: Image.asset(
                                  "assets/images/${hotOffers[index]["image"]!}.jpg",
                                  fit: BoxFit.cover,
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                            ),

                            const SizedBox(width: 10),

                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${context.tr(hotOffers[index]["deal"]!)} !",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Suwannaphum",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFB9375D),
                                    ),
                                  ),

                                  const SizedBox(height: 6),

                                  Text(
                                    context.tr(hotOffers[index]["desc"]!),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Suwannaphum",
                                      color: Color(0xFFD25D5D),
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}