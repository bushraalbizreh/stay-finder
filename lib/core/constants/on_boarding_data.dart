import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';

final List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    title: "Find Your Perfect Stay",
    description: '''Discover curated hotels, boutique
apartments, and serene resorts tailored
to your travel style.''',
    image: "assets/images/image1.png",
  ),
  OnboardingModel(
    title: "Explore Endless Options",
    description:
        '''Find top-rated hotels, luxury resorts, and budget-friendly stays around the globe with effortless search tools.''',
    image: "assets/images/onboarding2.png",
  ),
  OnboardingModel(
    title: "Unlock Exclusive Deals",
    description:
        '''Enjoy instant discounts, secret member rates, and special perks on every trip you take.''',
    image: "assets/images/onboarding3.png",
  ),
];
