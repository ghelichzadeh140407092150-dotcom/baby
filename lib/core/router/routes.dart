// core/router/routes.dart
/// Centralized route names and paths
class AppRoutes {
  // Root shell route
  static const String shell = '/';
  
  // Main tabs
  static const String today = '/today';
  static const String library = '/library';
  static const String child = '/child';
  static const String nutrition = '/nutrition';
  
  // M4 features
  static const String growth = '/child/growth';
  static const String vaccines = '/child/vaccines';
  static const String teething = '/child/teething';
  static const String milestones = '/child/milestones';
  
  // M5 features
  static const String nutritionFeature = '/nutrition';
  static const String shareCard = '/share-card';
  static const String monetization = '/monetization';
  
  // M6 features
  static const String sleep = '/sleep';
  
  // M7 features
  static const String export = '/export';
  
  // M8 features
  static const String settings = '/settings';
  
  // M9 features
  static const String medication = '/medication';
  
  // M10 features
  static const String appointment = '/appointment';
  
  // Feature routes
  static const String onboarding = '/onboarding';
  static const String settingsLegacy = '/settings-legacy';
  
  // Content detail routes
  static const String gameDetail = '/game/:id';
  static const String storyDetail = '/story/:id';
  static const String storyPlayer = '/story/play/:id';
  static const String craftDetail = '/craft/:id';
  
  // Dev route
  static const String devGallery = '/dev/gallery';
  
  // Private constructor
  AppRoutes._();
}
