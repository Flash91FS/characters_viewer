import 'package:characters_viewer/bloc/search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBox extends StatelessWidget {
  SearchBox({
    super.key,
  });

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: TextFormField(
        key: const Key('search_field'),
        controller: textEditingController,
        onChanged: (value) {
          context.read<SearchCubit>().filterBy(term: value);
        },
        decoration: const InputDecoration(
          hintText: 'Search Character',
          prefixIcon: Icon(Icons.search, size: 18),
        ),
      ),
    );
  }
}