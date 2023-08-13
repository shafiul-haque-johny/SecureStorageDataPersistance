import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secure_storage_sample/page/user_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secure Storage',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        scaffoldBackgroundColor: Colors.blueAccent,
        hintColor: Colors.white38,
        unselectedWidgetColor: Colors.white12,
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      home: const UserPage(),
    );
  }
}
