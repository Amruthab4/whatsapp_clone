

import 'package:whatsapp_clone/utils/exports.dart';

class CallList extends StatefulWidget {
  const CallList({super.key});

  @override
  State<CallList> createState() => _CallListState();
}

class _CallListState extends State<CallList> {
   final List<Map<String, String>> callData = const [
    {
      'callStatus': 'Outgoing',
      'callType': 'Audio',
      'chatMessage': 'Today, 12:28 PM',
      'chatTitle': 'Arya Stark',
      'imageUrl': kprofile1,
    },
    {
      'callStatus': 'Incoming',
      'callType': 'Video',
      'chatMessage': 'Today, 01:11 AM',
      'chatTitle': 'Cersei Lannister',
      'imageUrl':kprofile,
    },
     {
      'callStatus': 'Incoming',
      'callType': 'Video',
      'chatMessage': 'Today, 5:28 AM',
      'chatTitle': 'Red Woman',
      'imageUrl': 'assets/images/call.jpg',
    },
    {
      'callStatus': 'Incoming',
      'callType': 'Video',
      'chatMessage': 'Today, 5:28 AM',
      'chatTitle': 'Red Woman',
      'imageUrl': 'assets/images/call.jpg',
    },
    {
      'callStatus': 'Incoming',
      'callType': 'Video',
      'chatMessage': 'Today, 5:28 AM',
      'chatTitle': 'Red Woman',
      'imageUrl': kprofile1,
    },
    {
      'callStatus': 'Incoming',
      'callType': 'Video',
      'chatMessage': 'Today, 5:28 AM',
      'chatTitle': 'Red Woman',
      'imageUrl':kprofile,
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Recent",style: GoogleFonts.openSans(fontSize: kEighteenFont,fontWeight: FontWeight.w500),),
      for (int index = 0; index < callData.length; index++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                          backgroundImage: AssetImage(callData[index]['imageUrl']!),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            callData[index]['chatTitle']!,
                            style: GoogleFonts.openSans(fontWeight: kFW600,fontSize: kSixteenFont),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                callData[index]['callStatus'] == 'Incoming'
                                    ? Icons.call_received_sharp
                                    : Icons.call_made_sharp,
                                size: 15,
                                color: callData[index]['callStatus'] == 'Incoming'
                                    ?Kgreen
                                    : Kred,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                callData[index]['chatMessage']!,
                                style:  GoogleFonts.openSans(
                                 
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Icon(
                          callData[index]['callType'] == 'Audio' ? Icons.call : Icons.videocam,
                          color: Kgreen,
                        ),
                      ),
                    ],
                  ),
                ),
    ],);
  }
}