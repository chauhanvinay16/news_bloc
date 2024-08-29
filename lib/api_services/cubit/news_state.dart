part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsNetworknotavailable extends NewsState {}

final class NewsLoadded extends NewsState {
  final NewsModal newsModal;
  NewsLoadded(this.newsModal);
}

final class NewsError extends NewsState {}
