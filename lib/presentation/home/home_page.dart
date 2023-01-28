import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kopifood/application/home/home_cubit.dart';
import 'package:kopifood/domain/home/restaurant.dart';
import 'package:kopifood/injection.dart';
import 'package:kopifood/router/app_router.dart';
import 'package:kopifood/theme/app_colors.dart';
import 'package:kopifood/theme/app_text_style.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

  Future<void> initDynamicLinks(BuildContext context) async {
    dynamicLinks.onLink.listen((dynamicLinkData) {
      print(dynamicLinkData.asMap());
      print(dynamicLinkData.link.data);
      print(dynamicLinkData.link.queryParameters);

      context.router.navigate(
        FoodWrapperRoute(children: [
          FoodListRoute(
              restaurantId: dynamicLinkData.link.queryParameters['restaurantId']
                  .toString())
        ]),
      );
    }).onError((error) {
      print('onLink error');
      print(error.message);
    });
  }

  late HomeCubit homeCubit;
  @override
  void initState() {
    super.initState();
    homeCubit = getIt<HomeCubit>();
    homeCubit.getAllRestaurant();
    initDynamicLinks(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KopiFood"),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.homeStatus == HomeStatus.loading) {
            return const HomePageSkeleton();
          } else {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: 10.verticalSpace),
                SliverToBoxAdapter(
                  child: CarouselSlider(
                      options: CarouselOptions(
                          disableCenter: true,
                          aspectRatio: 2,
                          enableInfiniteScroll: false,
                          pageSnapping: false,
                          viewportFraction: 1),
                      items: [2, 2, 2, 3, 5]
                          .map(
                            (item) => Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              margin: EdgeInsets.only(left: 20),
                              width: double.infinity,
                              child: ClipRRect(
                                child: Image.network(
                                  "https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,q_60,w_750/food-trends-2021-phprMLwAP",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList()),
                ),
                SliverToBoxAdapter(child: 20.verticalSpace),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cafe/Resto",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        5.verticalSpace,
                        Text("Silahkan eksplor lebih jauh",
                            style: AppTextStyle.title14normal(
                                AppColors.defaultGrey)),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: 20.verticalSpace),
                SliverGrid.count(
                    crossAxisCount: 2,
                    children: state.restaurantList
                        .map((singleStore) => StoreItemWidget(
                              homeCubit: homeCubit,
                              restaurant: singleStore,
                            ))
                        .toList()),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}

class HomePageSkeleton extends StatelessWidget {
  const HomePageSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.textPrimary,
      highlightColor: AppColors.secondaryColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              color: AppColors.foregroundColor,
              width: double.infinity,
              height: 200,
            ),
            SizedBox(height: 20),
            Container(
              color: AppColors.foregroundColor,
              width: double.infinity,
              height: 40,
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: AppColors.foregroundColor,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreItemWidget extends StatelessWidget {
  const StoreItemWidget(
      {Key? key, required this.homeCubit, required this.restaurant})
      : super(key: key);

  final HomeCubit homeCubit;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          homeCubit.setSelectedRestaurant(restaurant);
          AutoRouter.of(context).push(
            FoodWrapperRoute(
              children: [FoodListRoute(restaurantId: restaurant.restaurantId)],
            ),
          );
        },
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                "https://res.cloudinary.com/hz3gmuqw6/image/upload/c_fill,q_60,w_750/food-trends-2021-phprMLwAP",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  10.verticalSpace,
                  Text(
                    restaurant.name,
                    maxLines: 2,
                    style: AppTextStyle.title16bold(),
                  ),
                  10.verticalSpace
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
