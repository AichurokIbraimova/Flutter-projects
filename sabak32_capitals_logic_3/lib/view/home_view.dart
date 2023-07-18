import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak32_capitals_logic_3/constants/app_colors.dart';
import 'package:sabak32_capitals_logic_3/model/continents.dart';
import 'package:sabak32_capitals_logic_3/model/suroo_joop.dart';
import 'package:sabak32_capitals_logic_3/view/test_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<Continents> continents = continentsList;

  Map images = {
    'Asia': 'asia.svg',
    'Europe': 'europe.svg',
    'Austalia': 'australia.svg',
    'North America': 'northAmerica.svg',
    'South America': 'southAmerica.svg',
    'Afica ': 'africa.svg',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Мамлекеттер борбору',
          style: TextStyle(color: continents[3].color),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            indent: 15,
            endIndent: 15,
            color: AppColors.dividerColor,
            height: 1,
          ),
          // Gridview///////////////////////////////
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 25, right: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    // childAspectRatio: 2 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: continents.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestView(
                            suroo: surooJoopList,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Text(
                            continents[index].name,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: continents[index].color),
                          ),
                          Expanded(
                            child: SvgPicture.asset(
                              'assets/continents/${continents[index].image}.svg',
                              width: 90,
                              color: continents[index].color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
