import 'package:siskang/app/modules/intro/views/intro_model.dart';

class IntroViewModel {
  List<IntroModel> getIntroList() {
    return [
      IntroModel(
        title: "Belajar lebih mudah",
        body:
            "Egestas dui id ornare arcu odio ut sem nulla. Etiam erat velit scelerisque in dictum.",
      ),
      IntroModel(
        title: "Lorem ipsum dolor sit amet",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      ),
    ];
  }
}
