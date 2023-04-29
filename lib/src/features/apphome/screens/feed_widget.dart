import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../models/feed_model.dart';

class FeedWidget extends StatelessWidget {
  final List<FeedModel> feedList;

  const FeedWidget({Key? key, required this.feedList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (ctx, index) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  feedList[index].content,
                  style: GoogleFonts.secularOne(
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 2,
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              Positioned(
                bottom: 2 + (35 / 3.5),
                right: 2 + 35 + 5,
                child: Text(
                  '- ${feedList[index].username}',
                  style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: -5,
                bottom: -5,
                child: IconButton(
                  onPressed: () => null,
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      itemCount: feedList.length,
    );
  }
}
