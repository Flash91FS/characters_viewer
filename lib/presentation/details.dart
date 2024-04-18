import 'package:flutter/material.dart';
import 'package:characters_viewer/models/related_topics.dart';
import 'package:flutter_svg/svg.dart';

import '../dimensions.dart';

class Details extends StatelessWidget {
  final RelatedTopics? item;

  const Details(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Character Details'),
        ),
        body: const Center(child: Text('No Character Selected')),
      );
    }

    String name = item!.getName();
    String desc = item!.getDescription();
    String imageURL = item?.icon?.uRL ?? '';
    String baseImgUrl = 'https://duckduckgo.com';
    return Scaffold(
      appBar: !Dimensions.isTabletOrLandscape(context) ? AppBar(
        title: Text(name),
      ):null,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Name:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    key:Key('name_$name'),
                    name,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(16),
                  child: imageURL.isNotEmpty
                      ? Image(
                          image: NetworkImage('$baseImgUrl$imageURL'),
                          fit: BoxFit.contain,
                        )
                      : getDefaultImage(),
                ),
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text(
                    "Description:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getDefaultImage() {
    // TODO return Image with placeholder img
    return SvgPicture.asset(
      'assets/svg/default-pic.svg',
      width: 100,
      height: 100,
      color: Colors.blue,
    );
  }
}
