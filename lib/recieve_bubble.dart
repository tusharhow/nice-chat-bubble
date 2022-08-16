import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatBubble extends StatelessWidget {
  ChatBubble({
    Key? key,
    this.message,
    this.bubbleColor,
    this.bubbleTextStyle,
    this.isReciever,
    this.isSeen,
  }) : super(key: key);
  String? message;
  Color? bubbleColor;
  TextStyle? bubbleTextStyle;
  bool? isReciever;
  bool? isSeen;
  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isReciever == true ? const SizedBox() : const SizedBox(),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: bubbleColor,
              borderRadius: isReciever!
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(18),
                    )
                  : const BorderRadius.only(
                      topRight: Radius.circular(18),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(18),
                      topLeft: Radius.circular(18),
                    ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message!,
                  style: bubbleTextStyle,
                ),
                const SizedBox(height: 10),
                isSeen == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.check,
                            color: Colors.black26,
                            size: 20,
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: const [
                              Icon(
                                Icons.check,
                                color: Colors.black26,
                                size: 20,
                              ),
                              Positioned(
                                left: 6,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.black26,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(
        top: isReciever == true ? 0 : 16,
        bottom: isReciever == true ? 16 : 16,
        left: isReciever == true ? 60 : 16,
        right: isReciever == true ? 16 : 60,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
