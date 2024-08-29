import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:news_bloc/api_services/http_client/api_client.dart';
import 'package:news_bloc/compoants/chek_network.dart';
import 'package:news_bloc/modal/news_modal.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  getnews(bool showLoadingIndIndigator)async{
    if(await isNetworkAvailable()){

      if(showLoadingIndIndigator==true){
        emit(NewsLoading());
      }

      ApiClient().getnews().then((value) {
        emit(NewsLoadded(
            value!));
      },).onError((error, stackTrace) {
        emit(NewsError());
        print("Error==>${error.toString()}");
      },);
    }else{
        emit(NewsNetworknotavailable());
    }
  }
}
