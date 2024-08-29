import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_bloc/Razorpay/pay_home.dart';
import 'package:news_bloc/api_services/cubit/news_cubit.dart';
import 'package:news_bloc/compoants/app_style.dart';
import 'package:news_bloc/compoants/loading_indigator.dart';
import 'package:news_bloc/modal/news_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<NewsCubit>().getnews(true);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("BCC News"),
        backgroundColor: lightbluecolor,
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RazorpayScreen(),));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: Colors.blue,
        onRefresh: () async {
          context.read<NewsCubit>().getnews(false);
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: BlocConsumer<NewsCubit,NewsState>(
          listener: (context, state) {
            print(state.toString());
          },
            builder: (context, state) {
              if(state is NewsLoading){
                return loadingindigator();
              }else if(state is NewsLoadded){
                final news =state.newsModal;
                return _news(news);
              }else if(state is NewsError){
                return Center(child: Text("Opps Somthing Want To Wrong !"),);
              }else if(state is NewsNetworknotavailable){
                return Center(child: Text("Network Issu 404 !"),);
              }
              return SizedBox();
            },
        ),
      ),
    );
  }
  _news(NewsModal news){
    print(news.articles);
      return ListView.builder(
          itemCount: news.articles!.length,
          itemBuilder: (context, index) {
            final data=news.articles![index];
            return Container(
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: conatinerr
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: data.urlToImage==null?
                            const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/img.png')):
                            DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(data.urlToImage.toString()))
                          ),
                        ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text("Id:${data.source?.name.toString()}"),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Text("Title:${data.title.toString()}"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: Text(data.description.toString()))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                          child: Text("${data.publishedAt.toString()}")),
                    ],
                  ),
                ],
              ),
            );
          },
      );
  }
}
