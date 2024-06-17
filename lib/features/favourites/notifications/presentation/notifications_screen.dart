import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/home/data/models/notice_model/notice_model.dart';
import 'package:lazy_engineer/features/home/data/repositories/home_repository_impl.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/notice/notice_cubit.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticationsScreen extends StatelessWidget {
  const NoticationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(accounts, style: theme.textTheme.headlineMedium),
      ),
      body: BlocProvider<NoticeCubit>(
        create: (context) => NoticeCubit(HomeRepositoryImpl()),
        child: BlocBuilder<NoticeCubit, NoticeState>(builder: (context, state) {
          return state.when(
            loading: () => LoadingScreen(),
            failure: (e) => FailureScreen(e),
            success: (List<NoticeModel> data) {
              return ListView.separated(
                itemCount: data.length,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 80),
                itemBuilder: (context, index) {
                  String startDate = DateFormat("dd-MM-yyyy")
                      .format(data[index].startDate ?? DateTime.now());
                  String endDate = DateFormat("dd-MM-yyyy")
                      .format(data[index].endDate ?? DateTime.now());
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From: $startDate To: $endDate",
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 4),
                        Text(
                          data[index].heading ?? "",
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 4),
                        Text(
                          data[index].message ?? "",
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: CustomButton.secondary(
                            text: "Learn more",
                            onPressed: () => _launchUrl(data[index].link ?? ""),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, __) => SizedBox(height: 16),
              );
            },
          );
        }),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
