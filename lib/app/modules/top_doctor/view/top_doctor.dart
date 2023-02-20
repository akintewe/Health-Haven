import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

import '../../favouriates/model/favourite_widget_model.dart';
import '../../favouriates/widgets/favourite_doc_card.dart';
import '../../search_page/widgets/category_box.dart';

class TopDoctors extends StatefulWidget {
  const TopDoctors({super.key});

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 1;

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
        title: Text(
          'Top Doctor',
          style: GoogleFonts.b612Mono(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsetsDirectional.only(end: 10),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: AppColors.primary90,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Remix.filter_3_fill,
                    color: AppColors.primary400,
                  )),
            ],
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
                              currentIndex == index ;
                            });
                            setState(() {
                              currentIndex == index ;
                            });
                          },
                          child: CategoryBox(
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
