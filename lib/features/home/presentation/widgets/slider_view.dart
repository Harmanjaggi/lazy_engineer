import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/notice/notice_cubit.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/full_screen_photo.dart';

class SliderView extends StatelessWidget {
  const SliderView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocBuilder<NoticeCubit, NoticeState>(builder: (context, state) {
        return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (error) {
              return Center(child: Text(error));
            },
            success: (noticeList) {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: noticeList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenPhoto(
                            networkImageList: noticeList.map((e) => e.imageLink ?? "").toList(),
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: CustomImage(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      networkImage: noticeList[index].imageLink,
                      isBorder: true,
                      borderColor: Colors.blueGrey,
                      radius: kRoundedRectangleRadius,
                      boxFit: BoxFit.fitHeight,
                    ),
                  );
                },
              );
            });
      }),
    );
  }
}
