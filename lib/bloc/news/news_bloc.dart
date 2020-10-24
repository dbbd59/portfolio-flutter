// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/model/news.dart';
import 'package:portfolio_flutter/repository/api_service/i_api_service.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@Injectable()
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._apiService) : super(NewsState.empty());

  IApiService _apiService;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(
      fetchNews: (e) async* {
        try {
          yield NewsState.loading();
          final News news = await _apiService.fetchNews();
          yield NewsState.loaded(news);
        } catch (_) {
          yield NewsState.error();
        }
      },
      reset: (e) async* {},
    );
  }
}
