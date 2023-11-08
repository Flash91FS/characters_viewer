import 'package:characters_viewer/bloc/search/search_cubit.dart';
import 'package:characters_viewer/bloc/search/search_state.dart';
import 'package:characters_viewer/presentation/details.dart';
import 'package:characters_viewer/presentation/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'character_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<SearchCubit>().loadResults();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SearchBox(),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              return state.when(
                  loaded: (allItems, filteredItems, selectedItem) {
                    return LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth > 635) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height - 120,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 250,
                                child: CharacterList(
                                  key: const Key('character_list'),
                                  items: filteredItems,
                                ),
                              ),
                              Container(
                                width: 1,
                                color: Colors.grey,
                              ),
                              Expanded(child: Details(selectedItem)),
                            ],
                          ),
                        );
                      } else {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height - 200,
                          child: CharacterList(
                            key: const Key('character_list'),
                            items: filteredItems,
                          ),
                        );
                      }
                    });
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failedToLoad: () =>
                      const Text('Oops Something Went Wrong!!'));
            },
          ),
        ],
      ),
    );
  }
}
