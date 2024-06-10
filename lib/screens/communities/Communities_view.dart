import 'package:whatsapp_clone/utils/exports.dart';

class CommunitieView extends StatefulWidget {
  const CommunitieView({super.key});

  @override
  State<CommunitieView> createState() => _CommunitieViewState();
}

class _CommunitieViewState extends State<CommunitieView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      
      child: Material(
        elevation: 2,
        shadowColor: kgrey.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            children: [
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
              SizedBox(
                width: 20.w,
              ),
              Text(
                "Technical Hub",
                style: GoogleFonts.openSans(
                    fontSize: kEighteenFont, fontWeight: FontWeight.w500),
              ),
            ],
            
          ),
        
        ),
      ),
    );
  }
}
