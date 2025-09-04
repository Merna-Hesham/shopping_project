import 'package:flutter/widgets.dart';
import '../l10n/app_localizations.dart';

extension LocalizationHelper on BuildContext {
  String tr(String key) {
    final loc = AppLocalizations.of(this)!;

    switch (key) {
    // Featured
      case "featured_t_shirts": return loc.featured_t_shirts;
      case "featured_sweaters": return loc.featured_sweaters;
      case "featured_jeans": return loc.featured_jeans;

    // Products
      case "product_beige_cardigan": return loc.product_beige_cardigan;
      case "product_beige_sweater": return loc.product_beige_sweater;
      case "product_black_bag": return loc.product_black_bag;
      case "product_beige_boots": return loc.product_beige_boots;
      case "product_tshirt": return loc.product_tshirt;
      case "product_jeans_jacket": return loc.product_jeans_jacket;
      case "product_green_sweater": return loc.product_green_sweater;
      case "product_brown_jacket": return loc.product_brown_jacket;
      case "product_red_heels": return loc.product_red_heels;
      case "product_shoes": return loc.product_shoes;

    // Prices
      case "price_600": return loc.price_600;
      case "price_700": return loc.price_700;
      case "price_1000": return loc.price_1000;
      case "price_1200": return loc.price_1200;
      case "price_300": return loc.price_300;
      case "price_1600": return loc.price_1600;
      case "price_2000": return loc.price_2000;

    // Hot offers
      case "offer_buy2get1": return loc.offer_buy2get1;
      case "offer_accessories": return loc.offer_accessories;
      case "offer_buy1get50": return loc.offer_buy1get50;
      case "offer_heels": return loc.offer_heels;
      case "offer_50_tshirts": return loc.offer_50_tshirts;
      case "offer_tshirts": return loc.offer_tshirts;
      case "offer_bundle": return loc.offer_bundle;
      case "offer_collection": return loc.offer_collection;
      case "offer_free_shipping": return loc.offer_free_shipping;
      case "offer_shipping": return loc.offer_shipping;

      default:
        return key; // fallback in case of typo
    }
  }
}