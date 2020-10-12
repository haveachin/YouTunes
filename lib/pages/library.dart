import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'addplaylist.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Playlists',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 32),
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
            ),
            items: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: new BorderRadius.all(
                        const Radius.circular(5.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dubstep',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('by Drakress'),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(height: 32),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.all(8),
            children: [
              FlatButton(
                child: Icon(Icons.shuffle_rounded),
                shape: CircleBorder(),
                onPressed: () {},
              ),
              RaisedButton(
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 48,
                  color: Colors.blue,
                ),
                color: Colors.white,
                shape: CircleBorder(),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.repeat),
                shape: CircleBorder(),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPlaylistPage()),
          );
        },
      ),
    );
  }
}
