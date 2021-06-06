import 'package:conversor_de_moeda/app/controllers/home_controller.dart';
import 'package:conversor_de_moeda/app/components/currency_box.dart';
import 'package:conversor_de_moeda/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController homeController;

  final TextEditingController fromText = TextEditingController();

  final TextEditingController toText = TextEditingController();

  @override
  void initState() {
    super.initState();

    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
            child: Column(children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 50),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: homeController.toText,
                items: homeController.currencies,
                onChanged: (CurrencyModel? model) {
                  setState(() {
                    homeController.toCurrency =
                        model ?? homeController.toCurrency;
                  });
                },
              ),
              SizedBox(height: 10),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: homeController.fromText,
                items: homeController.currencies,
                onChanged: (CurrencyModel? model) {
                  setState(() {
                    homeController.fromCurrency =
                        model ?? homeController.fromCurrency;
                  });
                },
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                onPressed: () {
                  homeController.convert();
                },
                child: Text('CONVERTER'),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
