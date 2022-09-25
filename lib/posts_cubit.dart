import 'package:cubit_app/net_service.dart';
import 'package:cubit_app/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _netService = NetService();
  PostsCubit() : super([]);

  void getPosts() async {
    emit(await _netService.fetchPosts());
  }
}