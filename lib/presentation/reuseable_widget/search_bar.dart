import 'package:demo_animation/theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBar extends ConsumerStatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  late TextEditingController txtController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    txtController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    txtController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: Icon(Icons.search),
        hintText: 'Search',
        border: OutlineInputBorder(
          gapPadding: 5
        )
      ),
    );
  }
}

// class SearchBar extends ConsumerWidget {
//   const SearchBar({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return TextFormField(
//
//     );
//   }
// }
//
// class SearchBar extends ConsumerWidget {
//   const SearchBar({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return TextFormField(
//
//     );
//   }
// }
