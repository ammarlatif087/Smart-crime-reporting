import 'package:crime_reporting_app/presentation/common/app_bar.dart';
import 'package:crime_reporting_app/presentation/common/textfield_widget.dart';

import '../../../app/index.dart';

class LiveChatView extends StatelessWidget {
  const LiveChatView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Message> messages = [
      Message(sender: 'John', text: 'Hello!'),
      Message(sender: 'Jane', text: 'Hi there!'),
      Message(sender: 'John', text: 'How are you?'),
      Message(sender: 'Jane', text: 'I\'m good. How about you?'),
      Message(sender: 'John', text: 'I\'m doing great!'),
      Message(sender: 'Jane', text: 'That\'s nice to hear.'),
      Message(sender: 'John', text: 'I\'m doing great!'),
      Message(sender: 'Jane', text: 'That\'s nice to hear.'),
      Message(sender: 'John', text: 'I\'m doing great!'),
      Message(sender: 'Jane', text: 'That\'s nice to hear.'),
      Message(sender: 'John', text: 'I\'m doing great!'),
      Message(sender: 'Jane', text: 'That\'s nice to hear.'),
      // Add more messages as needed
    ];

    TextEditingController messageController = TextEditingController();

    return Scaffold(
      appBar: buildAppBar(title: 'Live Chat'),
      body: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: false,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return MessageBubble(
                    sender: messages[index].sender,
                    text: messages[index].text,
                    isMe: messages[index].sender ==
                        'John', // Set the current user
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.r),
              child: Row(
                children: [
                  Expanded(
                    child: TextfieldWidget(
                      controller: messageController,
                      hintText: 'Type a message...',
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      //  sendMessage();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Message {
  final String sender;
  final String text;

  Message({required this.sender, required this.text});
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;

  const MessageBubble(
      {super.key,
      required this.sender,
      required this.text,
      required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Utils.popinMedText(
            sender,
            color: ColorManager.darkGrey,
            fontSize: 16.sp,
          ),
          10.spaceY,
          Material(
            borderRadius: BorderRadius.circular(20.r),
            elevation: 5.0,
            color: isMe ? ColorManager.primary : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 15.w,
              ),
              child: Utils.popinMedText(
                text,
                color: isMe ? Colors.white : Colors.black,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
