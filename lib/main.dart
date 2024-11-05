import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:p_o_s/application/providers/providers.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/presentaion/splash%20screen/screen_splash.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var path = await getApplicationDocumentsDirectory();
  Hive.init(path.path);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: blocProviders(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ballast',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              toolbarHeight: 40,
              backgroundColor: maincolor1,
              iconTheme: const IconThemeData(color: Colors.white),
              titleTextStyle: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
              )),
          textTheme: GoogleFonts.montserratTextTheme(
              (Theme.of(context).textTheme),
            ),
          colorScheme: ColorScheme.fromSeed(seedColor: maincolor1),
          useMaterial3: true,
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}
