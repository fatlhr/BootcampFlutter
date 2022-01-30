// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getxfire/getxfire.dart';
import 'package:sanbershop_getx/controllers/categories_controller.dart';
import '../main.dart';
import 'cart.dart';
import 'profile.dart';
import 'splash.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController username = TextEditingController();
  CategoriesController categoriesController = CategoriesController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        backgroundColor: Colors.grey[100],
        body: Obx(() {
          if (categoriesController.loading.value)
            return Center(child: CircularProgressIndicator());
          if (categoriesController.categories.isEmpty) {
            return Center(child: Text("No categories found"));
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildTop(),
                _buildCategoriesRow(),
                Gap(8),
                Expanded(
                  child: Obx(
                    () {
                      if (productsController.loading.value)
                        return Center(child: CircularProgressIndicator());
                      if (productsController.products.isEmpty) {
                        return Center(child: Text("No products found"));
                      }
                      return _buildProductsList();
                    },
                  ),
                ),
              ],
            ),
          );
        }));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'SanberShop',
        style: TextStyle(color: Colors.black),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      leading: Builder(
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          );
        },
      ),
      centerTitle: true,
      elevation: 0.0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
            onPressed: () {
              authController.logout();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => SplashScreen()),
              );
            },
            icon: Icon(Icons.exit_to_app_outlined),
          ),
        ),
      ],
    );
  }

  Container _buildCategoriesRow() {
    return Container(
      height: 35.0,
      margin: EdgeInsets.only(top: 16),
      child: ListView.builder(
        itemCount: categoriesController.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Obx(
          () => InkWell(
            onTap: () {
              categoriesController.changeCategories(index);
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: index == categoriesController.currentIndex.value
                    ? Colors.black87
                    : Colors.transparent,
                border: index == categoriesController.currentIndex.value
                    ? Border.all(color: Colors.transparent, width: 0)
                    : Border.all(color: Colors.grey.shade200, width: 2),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                categoriesController.categories[index].toString().toUpperCase(),
                style: TextStyle(
                  color: index == categoriesController.currentIndex.value
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _buildTop() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: SizedBox(
              width: 100.0,
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  isDense: true,
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search something ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 4),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ),
            );
          },
          icon: Icon(Icons.shopping_cart_outlined),
        ),
        
      ],
    );
  }

  GridView _buildProductsList() {
    return GridView.builder(
      padding: EdgeInsets.only(top: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: productsController.products.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 0.0,
          child: Container(
            height: 150,
            padding: EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          productsController.products[index]["image"]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Gap(8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productsController.products[index]["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Expanded(
                          child: Text(
                            productsController.products[index]["description"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "\$${productsController.products[index]["price"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
