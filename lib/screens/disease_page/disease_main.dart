import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plant_flutter/screens/disease_page/services/disease_provider.dart';
import 'package:plant_flutter/screens/disease_page/src/disease_home_page/disease_home_page.dart';
import 'package:plant_flutter/screens/disease_page/src/disease_home_page/models/disease_model.dart';
import 'package:plant_flutter/screens/disease_page/src/suggestions_page/suggestions.dart';
import 'package:provider/provider.dart';

class DiseaseHiveScreen extends StatefulWidget {
  const DiseaseHiveScreen({Key? key}) : super(key: key);

  @override
  State<DiseaseHiveScreen> createState() => _DiseaseHiveScreenState();
}

class _DiseaseHiveScreenState extends State<DiseaseHiveScreen> {

  @override
  void initState() {
    diseaseMain().then((value){
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Future diseaseMain() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    Hive.registerAdapter(DiseaseAdapter());

    await Hive.openBox<Disease>('plant_diseases');

    runApp(const PlantDisease());
  }
}

class PlantDisease extends StatelessWidget {
  const PlantDisease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DiseaseService>(
      create: (context) => DiseaseService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Detect diseases',
        theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'SFRegular'),
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case Suggestions.routeName:
                    return const Suggestions();
                  case DiseaseHomePage.routeName:
                  default:
                    return const DiseaseHomePage();
                }
              });
        },
      ),
    );
  }
}
