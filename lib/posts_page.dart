import 'package:cubit_app/post.dart';
import 'package:cubit_app/posts_cubit.dart';
import 'package:cubit_app/posts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts page'),
      ),
      body: BlocBuilder<PostsCubit, PostsState>(builder: (context, state) {
        if (state is LoadingPostsState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: (state as SuccessPostsState).posts.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(state.posts[index].title),
                ),
              );
            });
      }),
    );
  }
}
