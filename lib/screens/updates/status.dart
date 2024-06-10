

import 'dart:convert';
import 'dart:io';

import 'package:whatsapp_clone/utils/exports.dart';

class Status_Page extends StatefulWidget {
  const Status_Page({super.key});

  @override
  State<Status_Page> createState() => _Status_PageState();
}

class _Status_PageState extends State<Status_Page> {
  final List<Map<String, String>> mutedStatusList = [
    {
      "statusTitle": "Cersei",
     
      "statusImage": kprofile1,
    },
    {
      "statusTitle": "Lyanna",
     
      "statusImage": kprofile,
    },
    {
      "statusTitle": "Daenery",
   
      "statusImage": kcall,
    },
    {
      "statusTitle": "Cersei",
     
      "statusImage": kprofile1,
    },
    {
      "statusTitle": "Cersei",
     
      "statusImage": kprofile,
    },
  ];
  
  final Map<String, List<StoryItem>> userStories = {
    "Cersei": [
      StoryItem.pageImage(
        url: kprofile1,
        imageFit: BoxFit.cover,
        controller: StoryController(),
      ),
      StoryItem.text(
        title: "Cersei's first story",
        backgroundColor: Kred,
      ),
    ],
    "Lyanna": [
      StoryItem.pageImage(
        url: kprofile,
        imageFit: BoxFit.cover,
        controller: StoryController(),
      ),
      StoryItem.text(
        title: "Lyanna's first story",
        backgroundColor: Colors.green,
      ),
    ],
    "Daenery": [
      StoryItem.pageImage(
        url: kcall,
        imageFit: BoxFit.cover,
        controller: StoryController(),
      ),
      StoryItem.text(
        title: "Daenery's first story",
        backgroundColor: Colors.blue,
      ),
    ],
    // Add more user stories here
  };
  void openStory(String user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryView(
          storyItems: userStories[user]!,
          repeat: false,
          controller: StoryController(),
        ),
      ),
    );
  }
  bool isLoading = false;
  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(String type) async {
    setState(() {
      isLoading = true;
    });
    XFile? image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image!.path);
        base64Image = base64Encode(selectedImage?.readAsBytesSync() ?? []);
        // After selecting the image, display it as a story
        userStories["Your Story"] = [
          StoryItem.pageImage(
            url: selectedImage!.path,
            imageFit: BoxFit.cover,
            controller: StoryController(),
          ),
        ];
        openStory("Your Story");
      });
    }
    setState(() {
      isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 17,right: 15,top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Status",style: GoogleFonts.openSans(fontSize: kEighteenFont,fontWeight: FontWeight.w500),),
                  const Icon(Icons.more_vert),
                ],
              ),
               SizedBox(height: 20.h,),
        SingleChildScrollView(
         scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               GestureDetector(
                      onTap: () => chooseImage("gallery"),
                 child: const Stack(
                   children: [
                     Column(
                       children: [
                         CircleAvatar(
                           radius: 30,
                           backgroundImage: AssetImage(kcall),
                         ),
                         Text("Your Story"),
                       ],
                     ),
                     
                     Positioned(
                       top: 40,
                       left: 40,
                       child: CircleAvatar(
                         radius: 10,
                         backgroundColor: Kgreen,
                         child: Icon(Icons.add, size: 20),
                       ),
                     ),
                   ],
                 ),
               ),

                SizedBox(width: 20.w,),
               
               SizedBox(
                 height: 100, 
                 width: MediaQuery.of(context).size.width - 130,
                 child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: mutedStatusList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final status = mutedStatusList[index];
                      return GestureDetector(
                         onTap: () => openStory(status["statusTitle"]!),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(status["statusImage"]!),
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Text(status["statusTitle"]!),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
               ),
          ],),
        ),
            ],
          ),
         
        ),
        
      ],
    );
  }
}