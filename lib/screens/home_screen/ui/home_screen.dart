import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';
import '../../../assets/constants/lists.dart';
import '../../../assets/icons.dart';
import '../../components/grid_card.dart';
import 'components/slider_view.dart';
import '../../../assets/constants/strings.dart';
import '../../../config/route/routes.dart';
import '../../../model/user.dart';
import '../logic/cubit/user_state.dart';
import '../logic/cubit/user_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: BlocBuilder<UserCubit, UserState>(builder: (context, state) {
        if (state is UserFetchLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is UserFetchSuccessState) {
          return HomeScreenView(user: state.user);
        } else if (state is UserFetchFailureState) {
          return Center(
              child: Text(state.e.toString(),
                  style: TextStyle(color: theme.errorColor)));
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 54),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _nametag(theme, user.userName),
          const SizedBox(height: 12),
          _searchBar(theme),
          const SizedBox(height: 28),
          SliderView(imageList: HomeScreenList.sliderImageList),
          const SizedBox(height: 24),
          _titleLabel(lastOpened, theme),
          const SizedBox(height: 140),
          _titleLabel(categories, theme),
          const SizedBox(height: 16),
          _staggeredView()
        ]),
      ),
    );
  }

  Widget _titleLabel(String title, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: theme.textTheme.titleLarge,
      ),
    );
  }

  Widget _searchBar(ThemeData theme) {
    TextEditingController searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomTextField(
          controller: searchController,
          hintText: searchCourse,
          suffixIcon: SvgPicture.asset(AppIcons.searchIcon)),
    );
  }

  Widget _staggeredView() {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: HomeScreenList.categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => _navigation(context, index),
          child: GridCard(data: HomeScreenList.categoriesList[index]),
        );
      },
      // staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }

  void _navigation(BuildContext context, int index) {
    String _nav() {
      switch (index) {
        case 0:
          return PageRoutes.notesScreen;
        case 1:
          return PageRoutes.questionPaperScreen;
        case 2:
          return PageRoutes.practicleFileScreen;
        case 3:
          return PageRoutes.booksScreen;
        case 4:
          return PageRoutes.jobsScreen;
        default:
          return PageRoutes.homeScreen;
      }
    }

    Navigator.pushNamed(context, _nav());
  }

  Widget _nametag(ThemeData theme, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hello,
                    style: theme.textTheme.headline4
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    name,
                    style: theme.textTheme.headline4,
                  ),
                ]),
            const Spacer(),
            GestureDetector(
              child: SvgPicture.asset(
                AppIcons.notifications,
                width: 48,
                height: 48,
              ),
              onTap: () {},
            )
          ]),
    );
  }
}
