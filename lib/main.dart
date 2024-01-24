import 'package:flutter/material.dart';
import 'package:proj/listforres.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';
import './romodel.dart';
import 'package:flutter/services.dart';

// Paste your Res, Result, Filter, MenuCategory, and other classes here

class DataListPage extends StatefulWidget {
  @override
  _DataListPageState createState() => _DataListPageState();
}

class _DataListPageState extends State<DataListPage> {
  bool user = true;
  List C = [];

  List appertizer = [];
  List<MenuItem> menuItems = [];
  List<MenuCategory> menuCategories = [];
  List<MenuCategoryDishType> dishtype = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    String jsonData = await rootBundle.loadString('assets/r.json');
    // final response = await http.get(Uri.parse(
    //     'https://raw.githubusercontent.com/msksathya050602/Flutter-/main/restaurant1.json'));
    Res res = Res.fromJson(json.decode(jsonData));
    setState(() {
      menuItems = res.result.menuCategories
          .expand((category) =>
              category.dishTypes.expand((dishType) => dishType.menuItems))
          .toList();
      menuCategories = res.result.menuCategories;
      dishtype = menuCategories.expand((element) => element.dishTypes).toList();
    });
    // if (response.statusCode == 200) {

    // } else {
    //   throw Exception('Failed to load data');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user = !user;
        });
      }),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(),
          SliverToBoxAdapter(
            child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: menuCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ExpansionTile(
                    initiallyExpanded: true,
                    title: Text(
                        "${menuCategories[index].categoryName.toString()} (${menuCategories[index].menuItemsCount.toString()})",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    children: [
                      ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: dishtype.length,
                          itemBuilder: (BuildContext context, int index0) {
                            // List L = [];
                            // for (var item in dishtype) {
                            //   if (
                            //       dishtype[index0].dishTypeName.toLowerCase() ==
                            //           'Desserts'.toLowerCase()) {
                            //     L.add(item.dishTypeName.toString());
                            //   }
                            // }
                            // Column(
                            //   children: L.map((e) => Text(e.toString())).toList(),
                            // );
                            // if (menuCategories[index]
                            //             .categoryName
                            //             .toString()
                            //             .toLowerCase() ==
                            //         'Desserts'.toLowerCase() &&
                            //     dishtype[index0].dishTypeName.toLowerCase() ==
                            //         'Desserts'.toLowerCase()) {
                            //   print(dishtype[index0].dishTypeName.toLowerCase());
                            //   return Text(dishtype[index0].dishTypeName);
                            // }

                            //   if(menuItems[index0].dishType.toLowerCase()=='Salad'.toLowerCase())
                            //  { return Text(menuItems[index0].title.toLowerCase());}

                            List L = [];

                            // print(menuCategories[index].categoryName.toString());
                            print(menuItems[index].category.toLowerCase());

                            // MenuItem menuItem = menuItems[index0];
                            // print( menuItem.category.toLowerCase());
                            if (menuCategories[index]
                                    .categoryName
                                    .toLowerCase() ==
                                'Appetizers'.toLowerCase()) {
                              for (var i = 0; i < dishtype.length; i++) {
                                if (dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4001'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4000'.toLowerCase()) {
                                  L.clear();
                                  L.add(
                                    dishtype[index0].dishTypeName.toLowerCase(),
                                  );
                                }
                              }
                            } else if (menuCategories[index]
                                    .categoryName
                                    .toLowerCase() ==
                                'Desserts'.toLowerCase()) {
                              for (var i = 0; i < dishtype.length; i++) {
                                if (dishtype[index0].dishTypeId.toLowerCase() ==
                                    '4027'.toLowerCase()) {
                                  L.clear();
                                  L.add(
                                    dishtype[index0].dishTypeName.toLowerCase(),
                                  );
                                }
                              }
                            } else if (menuCategories[index]
                                    .categoryName
                                    .toLowerCase() ==
                                'Meal for One'.toLowerCase()) {
                              for (var i = 0; i < dishtype.length; i++) {
                                if (dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4006'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4013'.toLowerCase()) {
                                  L.clear();
                                  L.add(
                                    dishtype[index0].dishTypeName.toLowerCase(),
                                  );
                                }
                              }
                            } else {
                              for (var i = 0; i < dishtype.length; i++) {
                                if (dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4006'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4013'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4001'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4000'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '4027'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '3006'.toLowerCase() ||
                                    dishtype[index0].dishTypeId.toLowerCase() ==
                                        '3005'.toLowerCase()) {
                                } else {
                                  L.clear();
                                  L.add(
                                    dishtype[index0].dishTypeName.toLowerCase(),
                                  );
                                }
                              }
                            }
                            // } else if (menuCategories[index]
                            //         .categoryName
                            //         .toLowerCase() ==
                            //     'main course'.toLowerCase()) {
                            //   for (var i = 2; i <= 7; i++) {
                            //     L.add(
                            //       dishtype[i].dishTypeName.toString(),
                            //     );
                            //   }
                            // }
                            return Column(
                                children: L
                                    .map((ee) => ExpansionTile(
                                          initiallyExpanded: true,
                                          title:
                                              Text(ee.toString().toUpperCase(),
                                                  style: const TextStyle(
                                                    color: Color(0xFF979BA2),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                          children: [
                                            Builder(builder: (context) {
                                              C.clear();

                                              for (var i = 0;
                                                  i < menuItems.length;
                                                  i++) {
                                                if (ee ==
                                                    menuItems[i]
                                                        .dishType
                                                        .toLowerCase()) {
                                                  MenuItem menuItem =
                                                      menuItems[i];

                                                  if (menuItem.foodType == 1 &&
                                                      user == true) {
                                                    C.add(ListForRO(
                                                        img: menuItems[i]
                                                            .plpImageUrl,
                                                        title:
                                                            menuItems[i].title,
                                                        totalCalories:
                                                            menuItems[i]
                                                                .totalCalories
                                                                .value
                                                                .toString(),
                                                        price: menuItems[i]
                                                            .price
                                                            .toString(),
                                                        offerDetails: menuItems[
                                                                    i]
                                                                .offerDetails ??
                                                            ''));
                                                  } else if (menuItem
                                                              .foodType ==
                                                          2 &&
                                                      user == false) {
                                                    C.add(ListForRO(
                                                        img: menuItems[i]
                                                            .pdpImageUrl,
                                                        title:
                                                            menuItems[i].title,
                                                        totalCalories:
                                                            menuItems[i]
                                                                .totalCalories
                                                                .value
                                                                .toString(),
                                                        price: menuItems[i]
                                                            .price
                                                            .toString(),
                                                        offerDetails: menuItems[
                                                                    i]
                                                                .offerDetails ??
                                                            ''));
                                                  }
                                                  // else {
                                                  //   C.add(ListForRO(
                                                  //       img: menuItems[i]
                                                  //           .pdpImageUrl,
                                                  //       title:
                                                  //           menuItems[i].title,
                                                  //       totalCalories:
                                                  //           menuItems[i]
                                                  //               .totalCalories
                                                  //               .value
                                                  //               .toString(),
                                                  //       price: menuItems[i]
                                                  //           .price
                                                  //           .toString(),
                                                  //       offerDetails: menuItems[
                                                  //                   i]
                                                  //               .offerDetails ??
                                                  //           ''));
                                                  // }
                                                }
                                              }

                                              return ListView.builder(
                                                primary: false,
                                                shrinkWrap: true,
                                                itemCount: C.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index3) {
                                                  if (C.isEmpty) {
                                                    const Center(
                                                      child:
                                                          CircularProgressIndicator(),
                                                    );
                                                  } else {
                                                    try {
                                                      return C[index3];
                                                    } catch (e) {
                                                      RangeError(index3);
                                                    }
                                                  }
                                                },
                                              );

                                              // return ListView.builder(
                                              //     primary: false,
                                              //     shrinkWrap: true,
                                              //     itemCount: C.length,
                                              //     itemBuilder:
                                              //         (BuildContext context,
                                              //             int index3) {
                                              //       print(C);
                                              //       return C[index3];
                                              //     });
                                            })
                                          ],
                                        ))
                                    .toList());
                          })
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DataListPage(),
  ));
}
