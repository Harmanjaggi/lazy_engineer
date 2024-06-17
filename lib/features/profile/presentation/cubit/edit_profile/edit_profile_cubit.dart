import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/profile/data/models/upload_user_detail_modal/upload_user_detail_modal.dart';
import 'package:lazy_engineer/features/profile/data/repositories/profile_repository_impl.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final UserDetail data;
  EditProfileCubit(this.data) : super(const EditProfileState.initial()) {
    onInit();
  }

  File? newImage;
  final ProfileRepositoryImpl repository = ProfileRepositoryImpl();

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final designationController = TextEditingController();
  final companyController = TextEditingController();
  final universityController = TextEditingController();
  final bioController = TextEditingController();
  final linkedinController = TextEditingController();
  final githubController = TextEditingController();
  final twitterController = TextEditingController();
  final instagramController = TextEditingController();

  void onInit() {
    fullNameController.text = data.fullName ?? '';
    emailController.text = data.email ?? '';
    designationController.text = data.designation ?? '';
    companyController.text = data.company ?? '';
    universityController.text = data.university ?? '';
    bioController.text = data.bio ?? '';
    linkedinController.text = data.linkedin ?? '';
    githubController.text = data.github ?? '';
    twitterController.text = data.twitter ?? '';
    instagramController.text = data.instagram ?? '';
  }

  void uploadImage(File data) {
    newImage = data;
  }

  void editData(void Function() navigation) async {
    try {
      const EditProfileState.loading();
      if (newImage != null) {
        UploadUserDetail request = UploadUserDetail(
          image: await MultipartFile.fromFile(newImage!.path),
          id: data.id,
          fullName: fullNameController.text,
          email: emailController.text,
          designation: designationController.text,
          company: companyController.text,
          university: universityController.text,
          bio: bioController.text,
          linkedin: linkedinController.text,
          github: githubController.text,
          instagram: instagramController.text,
          twitter: twitterController.text,
          imageLink: data.imageLink,
        );
        await repository.updateProfileWithImage(request);
      } else {
        UserDetail request = UserDetail(
          id: data.id,
          fullName: fullNameController.text,
          email: emailController.text,
          designation: designationController.text,
          company: companyController.text,
          university: universityController.text,
          bio: bioController.text,
          linkedin: linkedinController.text,
          github: githubController.text,
          instagram: instagramController.text,
          twitter: twitterController.text,
          imageLink: data.imageLink,
          isAdmin: data.isAdmin,
          notesCount: data.notesCount,
          jobsCount: data.jobsCount,
          booksCount: data.booksCount,
          papersCount: data.papersCount,
          filesCount: data.filesCount,
        );
        await repository.updateProfile(request);
      }
      emit(EditProfileState.success());
      await Future.delayed(Duration(seconds: 1));
      navigation();
    } catch (e) {
      emit(EditProfileState.failure(e));
    }
  }
}
