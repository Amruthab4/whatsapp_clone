import 'package:whatsapp_clone/utils/exports.dart';

class ChatSearch extends StatefulWidget {
  const ChatSearch({super.key});

  @override
  State<ChatSearch> createState() => _SearchState();
}

class _SearchState extends State<ChatSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.all(10.sp),
          child: CustomSearchField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            obscure: false,
            maxLines: 1,
            readOnly: false,
            hintText: "Search...",
            prefix: const Icon(Icons.search),
            fontWeight: FontWeight.w600,
            fontSize: kSixteenFont,
            textColor: kgrey,
          ),
        ),
        const Row(children: [
          
        ],)
      ],
    );
  }
}
