import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/home/data/models/account_modal/account_modal.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/user/user_cubit.dart';
import 'package:lazy_engineer/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:lazy_engineer/features/profile/presentation/cubit/profile/profile_cubit.dart';
import 'package:lazy_engineer/features/profile/presentation/widgets/upload_image.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class EditProfileView extends StatelessWidget with InputValidationMixin {
  const EditProfileView(this.data, {super.key});
  final UserDetail data;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formGlobalKey = GlobalKey<FormState>();

    return BlocProvider<EditProfileCubit>(
      create: (context) => EditProfileCubit(data),
      child: BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
        EditProfileCubit read = context.read<EditProfileCubit>();
        return state.when(
          loading: () => LoadingScreen(),
          failure: (e) => FailureScreen(e),
          success: () {
            return Scaffold(
              body: Center(
                child: Text("Success"),
              ),
            );
          },
          initial: () {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formGlobalKey,
                child: ListView(
                  children: [
                    UploadImage(
                      initialImage: data.imageLink ?? "",
                      onSubmit: read.uploadImage,
                    ),
                    const SizedBox(height: 16),
                    Text(fullName, style: theme.textTheme.titleLarge),
                    CustomTextField.secondary(
                      controller: read.fullNameController,
                      hintText: fullName,
                      validator: usernameValidation,
                    ),
                    const SizedBox(height: 16.0),
                    Text(designation, style: theme.textTheme.titleLarge),
                    CustomTextField.secondary(
                      controller: read.designationController,
                      hintText: designation,
                      validator: (value) =>
                          nullCheckTextValidation(value, designation),
                    ),
                    const SizedBox(height: 16.0),
                    Text(company, style: theme.textTheme.titleLarge),
                    CustomTextField.secondary(
                      controller: read.companyController,
                      hintText: company,
                      validator: (value) =>
                          nullCheckTextValidation(value, company),
                    ),
                    const SizedBox(height: 16.0),
                    Text(description, style: theme.textTheme.titleLarge),
                    const SizedBox(height: 16.0),
                    CustomTextField.multiLine(
                      controller: read.bioController,
                      hintText: description,
                    ),
                    const SizedBox(height: 16.0),
                    //* College
                    Text(college, style: theme.textTheme.titleLarge),
                    CustomTextField.secondary(
                      controller: read.universityController,
                      hintText: college,
                      validator: (value) =>
                          nullCheckTextValidation(value, college),
                    ),
                    const SizedBox(height: 16.0),
                    // Text(specialization, style: theme.textTheme.titleLarge),
                    // const SizedBox(height: 12.0),
                    // CustomDropdown(
                    //   list: classList,
                    //   hintText: classD,
                    //   controller: classController,
                    //   dropdownValue: data.userClass.toString(),
                    //   validator: (value) => nullCheckTextValidation(
                    //     value,
                    //     classD,
                    //   ),
                    // ),
                    // const SizedBox(height: 16),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Flexible(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(semester, style: theme.textTheme.titleLarge),
                    //           const SizedBox(height: 12),
                    //           CustomDropdown(
                    //             list: semesterList,
                    //             keyList: semesterKeyList,
                    //             hintText: semester,
                    //             controller: semesterController,
                    //             dropdownValue: semesterList[semesterIndex],
                    //             validator: (value) => nullCheckTextValidation(
                    //               value,
                    //               semester,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     const SizedBox(width: 16),
                    //     Flexible(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(year, style: theme.textTheme.titleLarge),
                    //           const SizedBox(height: 12),
                    //           CustomDropdown(
                    //             list: yearOfAdmissionList,
                    //             hintText: yearOfAdmission,
                    //             controller: yearOfAdmissionController,
                    //             dropdownValue: data.yearOfAdmission.toString(),
                    //             validator: (value) => nullCheckTextValidation(
                    //               value,
                    //               year,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 16.0),
                    // Text(
                    //   experienceLevel,
                    //   style: theme.textTheme.titleLarge,
                    // ),
                    // const SizedBox(height: 12.0),
                    // MultiOptionFilter(
                    //   list: experienceLevelList,
                    //   initialValue: const ['Internship', 'Associate'],
                    //   selected: experienceLevelValueList,
                    // ),
                    // const SizedBox(height: 16.0),
                    // Text(
                    //   jobType,
                    //   style: theme.textTheme.titleLarge,
                    // ),
                    // const SizedBox(height: 12.0),
                    // MultiOptionFilter(
                    //   list: jobTypeList,
                    //   selected: jobTypeValueList,
                    // ),
                    // const SizedBox(height: 16.0),
                    Text(
                      contact,
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16.0),
                    // CustomTextField(
                    //   controller: emailController,
                    //   hintText: email,
                    //   prefix: FaIcon(FontAwesomeIcons.envelope),
                    //   prefixIcon: AppIcons.mailIcon,
                    //   validator: (value) => nullCheckTextValidation(
                    //     value,
                    //     email,
                    //   ),
                    // ),
                    // const SizedBox(height: 16.0),
                    CustomTextField(
                      controller: read.linkedinController,
                      hintText: linkedinHandle,
                      prefix: FaIcon(FontAwesomeIcons.linkedin),
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      controller: read.githubController,
                      hintText: githubHandle,
                      prefix: FaIcon(FontAwesomeIcons.github),
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      controller: read.twitterController,
                      hintText: twitterHandle,
                      prefix: FaIcon(FontAwesomeIcons.twitter),
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextField(
                      controller: read.instagramController,
                      hintText: instagramHandle,
                      prefix: FaIcon(FontAwesomeIcons.instagram),
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: CustomButton(
                        onPressed: () {
                          if (formGlobalKey.currentState!.validate()) {
                            context.read<EditProfileCubit>().editData(() {
                              context.read<UserCubit>().getUser();
                              context.read<ProfileCubit>().togleIsEditProfile();
                            });
                          }
                        },
                        width: 150,
                        text: submit,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
