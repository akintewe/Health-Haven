import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import '../../favouriates/model/favourite_widget_model.dart';
import '../../favouriates/widgets/favourite_doc_card.dart';
import '../widgets/category_box.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 239, 245),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.go('/home-page');
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primary,
              size: 27,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarAnimation(
              searchBoxWidth: 300,
              textEditingController: TextEditingController(),
              isOriginalAnimation: false,
              buttonBorderColour: Colors.black45,
              buttonWidget: const Icon(Icons.search),
              secondaryButtonWidget: const Icon(Icons.cancel),
              trailingWidget: const Icon(Icons.sort),
              onFieldSubmitted: (String value) {
                debugPrint('onFieldSubmitted value $value');
              },
              onPressButton: (hello) {
                //context.push("/searchPage");
              },
              onChanged: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return const SizedBox(
                          width: 5,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex == index;
                            });
                          },
                          child: CategoryBox(
                            category: 'All',
                            isCurrent: currentIndex == index,
                          ),
                        );
                      },
                      itemCount: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.separated(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: favouriteDoctors.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final favouriteDoctor = favouriteDoctors[index];
                    return FavouriteDocCard(
                      name: favouriteDoctors[index].name,
                      review: favouriteDoctors[index].review,
                      title: favouriteDoctors[index].title,
                      hospital: favouriteDoctors[index].hospital,
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
