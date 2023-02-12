import 'package:cancer_chat/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';

import '../model/favourite_widget_model.dart';
import '../widgets/favourite_doc_card.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({super.key});

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
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
          'Favourite Doctor',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
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
          )
        ],
      ),
      body: ListView.separated(
        itemCount: favouriteDoctors.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 20,
        ),
        itemBuilder: (BuildContext context, int index) {
          final favouriteDoctor = favouriteDoctors[index];
          return InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 40,
                              height: 2.5,
                              decoration: const BoxDecoration(
                                  color: AppColors.grey90,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FavouriteDocCard(
                                name: favouriteDoctors[index].name,
                                review: favouriteDoctors[index].review,
                                title: favouriteDoctors[index].title, hospital: favouriteDoctors[index].hospital,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Remove from favourite?',
                                style: GoogleFonts.b612Mono(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(25)),
                                      border: Border.all(
                                          color: AppColors.primary800,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: GoogleFonts.b612Mono(
                                            color: AppColors.primary800,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: AppColors.primary800,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(25)),
                                      border: Border.all(
                                          color: AppColors.primary800,
                                          style: BorderStyle.solid),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Yes, Remove',
                                        style: GoogleFonts.b612Mono(
                                            color: AppColors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: FavouriteDocCard(
              name: favouriteDoctor.name,
              review: favouriteDoctor.review,
              title: favouriteDoctor.title, hospital: favouriteDoctor.hospital,
            ),
          );
        },
      ),
    );
  }
}
