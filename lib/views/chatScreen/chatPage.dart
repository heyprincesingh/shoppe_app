import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:shoppe/views/cart/mycart.dart';
import 'package:shoppe/views/homeScreen/productDetails.dart';
import '../../models/apiData/chatModel.dart';
import 'package:intl/intl.dart';
import 'package:regexed_validator/regexed_validator.dart';

String Uid = '1';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> message = [
    Message(
      text: 'Hello',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 1)),
      id: '1',
    ),
    Message(
      text: 'hi',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 2)),
      id: '2',
    ),
    Message(
      text: 'can i get your suggestion ?',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 3)),
      id: '1',
    ),
    Message(
      text: 'yes',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 4)),
      id: '2',
    ),
    Message(
      text: 'How does this derss look ?',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 5)),
      id: '1',
    ),
    Message(
      text:
          'https://www.google.com/url?q=http://www.myntra.com/Dress-Material/Ethnic-Yard/Ethnic-Yard-Women-Blue--Gold-Toned-Embroidered-Semi-Stitched-Dress-Material/19462198/buy&sa=U&ved=0ahUKEwitjsjP4Pb8AhXsTGwGHcoRBLwQwSsIDg&usg=AOvVaw32znlI6U8krpyeVAnYQXYi',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 6)),
      id: '1',
    ),
    Message(
      text: 'Thats very pretty yr',
      date: DateTime.now().subtract(Duration(days: 1, minutes: 7)),
      id: '2',
    ),
  ];

  bool extractLink(String text) {
    RegExp exp = RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+',
        caseSensitive: false);
    Iterable<Match> matches = exp.allMatches(text);
    return matches.length > 0 ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.person_outline_outlined,color: Color(0xfff79e72),size: 26),
          )
        ],
        title: const Text('Alice', style: TextStyle(color: Colors.black,fontFamily: "ubuntu"),),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: message,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Card(
                  color: Color(0xfff79e72),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(message.date),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.id == Uid
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: message.id != Uid ? Color(0xfff79e72): Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: extractLink(message.text)
                          ? GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ProductDetails(link: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS_8DWHcC3dV86V2aWwqGEHlMr1XzDzhCpIQhF9tk2GwN9jG8UP8QdqppTBy_dOTPSx3hkprp_MyAR7-1H_HsTqlRgdBUbXV6GARWApvrUp6omjMiHighhfxA&usqp=CAE"),
                          ),
                        ),
                            child: Column(
                                children: [
                                  Image.network(
                                      'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS_8DWHcC3dV86V2aWwqGEHlMr1XzDzhCpIQhF9tk2GwN9jG8UP8QdqppTBy_dOTPSx3hkprp_MyAR7-1H_HsTqlRgdBUbXV6GARWApvrUp6omjMiHighhfxA&usqp=CAE',
                                      width: MediaQuery.of(context).size.width *
                                          0.5),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.5,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Women Blue & Gold-Toned Embroidered Semi-Stitched Dress Material',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "https://encryp-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS_8DWHcC3dV86V2aWwqGEHlMr1XzDzhCpIQhF9tk2GwN9jG8UP8QdqppTBy_dOTPSx3hkprp_MyAR7-1H_HsTqlRgdBUbXV6GARWApvrUp6omjMiHighhfxA&usqp=CAE",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),
                                        ),
                                        GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) => ProductDetails(link: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS_8DWHcC3dV86V2aWwqGEHlMr1XzDzhCpIQhF9tk2GwN9jG8UP8QdqppTBy_dOTPSx3hkprp_MyAR7-1H_HsTqlRgdBUbXV6GARWApvrUp6omjMiHighhfxA&usqp=CAE',),
                                            ),
                                          ),
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(15),
                                                  bottomRight: Radius.circular(15),
                                                )
                                            ),
                                            child: Center(
                                                child: Text(
                                                  'Add To Cart',
                                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                          )
                          : Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: Text(message.text),
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12), hintText: 'Message..'),
              onSubmitted: (text) {
                final message =
                    Message(text: text, date: DateTime.now(), id: '1');
              },
            ),
          )
        ],
      ),
    );
  }
}
