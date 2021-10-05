import 'package:flutter/material.dart';

const String BaseUrl = "http://61504abaa706cd00179b73ef.mockapi.io/";

/// end points

const String HOME_API = "api/v1/home";

/// sections types

const SLIDER = "slider";
const CATEGORIES = "categories";
const BEST_PRODUCTS = "bestProducts";
const BEST_OF_THE_BEST = "bestOfTheBest";
const STORES = "stores";

class AppColor {
  static const Color textGreyColor = Color(0xFF959A9B);

  static Color greenColor = Color.fromRGBO(20, 150, 141, 1);
}

class ErrorCode {
  static const int somethingWentWrong = 1;
  static const int thanksYou = 2;
  static const int theCompanyAlreadyExists = 3;
  static const int RateExists = 4;
}

