import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_bloc/api_services/http_client/api_client.dart';
import 'package:news_bloc/modal/product_modal.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  product(){
    emit(ProductLoading());

    ApiClient().getproduct().then((value) {
      emit(ProductLoadded(value));
    },).onError((error, stackTrace) {
      print("Error:${error.toString()}");
    },);
  }
}
