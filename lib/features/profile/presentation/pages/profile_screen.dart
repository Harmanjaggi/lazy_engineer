import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/user/user_cubit.dart';
import 'package:lazy_engineer/features/profile/presentation/cubit/profile/profile_cubit.dart';
import 'package:lazy_engineer/features/profile/presentation/pages/edit_profile_screen.dart';
import 'package:lazy_engineer/features/profile/presentation/pages/profile_screen_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit()),
        BlocProvider(create: (context) => ProfileCubit()),
      ],
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return state.when(
            failure: (e) => FailureScreen(e),
            loading: () => const LoadingScreen(),
            success: (data) {
              return Scaffold(
                appBar: AppBar(
                  leading: BlocBuilder<ProfileCubit, bool>(
                      builder: (context, isEdit) {
                    if (!isEdit) {
                      return IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () =>
                            context.read<ProfileCubit>().togleIsEditProfile(),
                      );
                    } else {
                      return IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => context.pop(),
                      );
                    }
                  }),
                  actions: [
                    BlocBuilder<ProfileCubit, bool>(builder: (context, isEdit) {
                      if (isEdit) {
                        return CustomButton(
                          onPressed: () =>
                              context.read<ProfileCubit>().togleIsEditProfile(),
                          text: 'Edit',
                        );
                      }
                      return const SizedBox.shrink();
                    }),
                    SizedBox(width: 16),
                  ],
                ),
                body:
                    BlocBuilder<ProfileCubit, bool>(builder: (context, isEdit) {
                  return isEdit
                      ? ProfileScreenView(data)
                      : EditProfileView(data);
                }),
              );
            },
          );
        },
      ),
    );
  }
}
