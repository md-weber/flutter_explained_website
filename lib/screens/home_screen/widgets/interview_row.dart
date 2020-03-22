import 'package:flutter/material.dart';
import 'package:storyblok_client/storyblok_client.dart';

class InterviewRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 150,
          child: Card(
            child: Column(
              children: <Widget>[
                Text("Hello World"),
                RaisedButton(
                  onPressed: () async {
                    const token = "VwxeTPDvYJLpQ7VtLlmxUQtt";
                    final storyblok = StoryblokClient(
                        token: token, autoCacheInvalidation: true);

                    final data = await storyblok.fetchOne(
                      fullSlug: 'articles/interview-with-groovinchip',
                    );
                    print(data);
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
