import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Music'),
      ),
      body: Center(
        child: Text(
          'Search for your favorite vocals here!',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

extension on TextTheme {
  get bodyText1 => null;
}
