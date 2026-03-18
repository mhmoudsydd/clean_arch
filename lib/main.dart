import 'package:clean_architecture/bloc_observer.dart';
import 'package:clean_architecture/config/constant.dart';
import 'package:clean_architecture/config/functions/service_locator.dart';
import 'package:clean_architecture/config/resource/app_colors.dart';
import 'package:clean_architecture/config/utils/go_routes.dart';
import 'package:clean_architecture/modules/home/data/repos/home_repo_impl.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/modules/home/domain/use_cases/fetch_featured_book_use_case.dart';
import 'package:clean_architecture/modules/home/domain/use_cases/fetch_newest_book_use_case.dart';
import 'package:clean_architecture/modules/home/presentation/manager/cubit/feature_book_cubit.dart';
import 'package:clean_architecture/modules/home/presentation/manager/cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
    await Hive.openBox<BookEntity>(kFeaturedBox);

    await Hive.openBox<BookEntity>(kNewestBox);


  setupServiceLocator();
  Bloc.observer = AllObserver();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBookCubit(
            FetchFeaturedBookUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(
            FetchNewestBookUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
