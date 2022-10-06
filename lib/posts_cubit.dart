import 'package:cubit_app/net_service.dart';
import 'package:cubit_app/posts_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<PostsState> {
  final _netService = NetService();
  PostsCubit() : super(LoadingPostsState());

  void getPosts() async {
    emit(
      SuccessPostsState(posts: await _netService.fetchPosts()),
    );
  }
}
