import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_bloc/api_services/cubit/product/product_cubit.dart';
import 'package:news_bloc/compoants/app_style.dart';
import 'package:news_bloc/compoants/loading_indigator.dart';

import '../../api_services/cubit/news_cubit.dart';
import '../../modal/product_modal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProductCubit>().product();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(color: whitecolor,),
          title: Text("Product Details",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
        ),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return loadingindigator();
            } else if (state is ProductLoadded) {
              return getdata(state.productModal);
            } else if (state is ProductError) {
              return Center(child: Text('Opps Sothing Want To Wrong'),);
            }
            return SizedBox();
          },
        )
    );
  }

  Widget getdata(List<ProductModal>productModal) {
    return ListView.separated(
      itemCount: productModal.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                      productModal[index].image.toString(), fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                productModal[index].title.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Price: ",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "${productModal[index].price??""}",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "Category: ",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${productModal[index].category ?? ""}",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: Colors.deepOrangeAccent,
                        size: 20.0,
                      );
                    }),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    "${productModal[index].rating?.rate ?? ""}",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                productModal[index].description.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.green,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
            ],
          ),
        );
      },
    );
  }
}