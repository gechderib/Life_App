import 'package:flutter/widgets.dart';

class UiProvider extends ChangeNotifier{
  int activeIndex = 0;
  bool isOverlayDisplayed = false;

  void changeIndex(int index){
    activeIndex = index;
    notifyListeners();
  }

  void overlayDisplay(){
    isOverlayDisplayed = true;
  }  
  
  void overlayNotDisplay(){
    isOverlayDisplayed = false;
  }

}