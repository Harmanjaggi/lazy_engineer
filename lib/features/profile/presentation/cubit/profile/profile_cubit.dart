import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<bool> {
  ProfileCubit() : super(true);

  void togleIsEditProfile() {
    emit(!state);
  }
}
