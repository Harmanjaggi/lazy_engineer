import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/full_screen_photo.dart';

class UploadImage extends StatefulWidget {
  const UploadImage(
      {super.key, required this.initialImage, required this.onSubmit});
  final String initialImage;
  final Function(File data) onSubmit;
  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? newImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 70,
          child: (newImage != null)
              ? CustomImage(
                  file: newImage,
                  height: 140,
                  width: 140,
                  radius: 70,
                )
              : CustomImage(
                  networkImage: widget.initialImage,
                  height: 140,
                  width: 140,
                  radius: 70,
                ),
        ),
        Positioned(
          bottom: 0,
          right: 100,
          child: CircleAvatar(
            child: IconButton(
              onPressed: () async {
                try {
                  final image =
                      await FilePicker.platform.pickFiles(type: FileType.image);
                  if (image == null) return;
                  final pickedFile = image.files.first;
                  setState(() {
                    newImage = File(pickedFile.path!);
                  });
                  widget.onSubmit.call(newImage!);
                } on PlatformException catch (e) {
                  debugPrint('Failed to pick image: $e');
                }
              },
              icon: CustomIcon(AppIcons.editIcon),
            ),
          ),
        ),
      ],
    );
  }

  void navigation(BuildContext context, int index, List<File> list) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenPhoto(
          index: index,
          list: list,
        ),
      ),
    );
  }
}
