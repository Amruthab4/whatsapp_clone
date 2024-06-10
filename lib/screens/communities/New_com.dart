import 'package:whatsapp_clone/utils/exports.dart';

class NewCommunities extends StatefulWidget {
  const NewCommunities({super.key});

  @override
  State<NewCommunities> createState() => _NewCommunitiesState();
}

class _NewCommunitiesState extends State<NewCommunities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Material(
        elevation: 2,
        shadowColor: kgrey.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            children: [
              Stack(
                children: [
                 // const Text(ktext), //text using from constants
                  Container(
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: kgrey.withOpacity(0.3)),
                    child: const Icon(
                      Icons.people,
                      color: Kwhite,
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    left: 30,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Kgreen,
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Kwhite,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                "New Community",
                style: GoogleFonts.openSans(
                    fontSize: kEighteenFont, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
