import 'package:characters_viewer/bloc/search/search_cubit.dart';
import 'package:characters_viewer/dimensions.dart';
import 'package:characters_viewer/models/related_topics.dart';
import 'package:characters_viewer/presentation/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterList extends StatelessWidget {
  final List<RelatedTopics> items;

  const CharacterList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12),
      child: ListView.separated(
          key: const Key('character_list_view'),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (Dimensions.isTabletOrLandscape(context)) {
                  context.read<SearchCubit>().setSelectedItem(items[index]);
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details(items[index]),
                  ));
                }
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    key: Key('list_item_$index'),
                    items[index].getName(),
                    style: const TextStyle(fontSize: 14),
                  )),
            );
          }),
    );
  }
}
