import 'package:cubit_app/post.dart';

abstract class PostsState {}

class LoadingPostsState extends PostsState {}

class SuccessPostsState extends PostsState {
  List<Post> posts;
  SuccessPostsState({required this.posts});
}
