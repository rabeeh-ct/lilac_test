import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'navigation_controller.g.dart';



@riverpod
class NavigationController extends _$NavigationController{
  @override
  FutureOr<int> build (){
    return 0;
  }

  // int selectedIndex=0;


  changeTap(int index){
    state=AsyncData(index);
    // selectedIndex = index;
  }

}