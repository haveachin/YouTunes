import 'package:flutter/material.dart';

class AddPlaylistPage extends StatefulWidget {
  @override
  _AddPlaylistPageState createState() => _AddPlaylistPageState();
}

class _AddPlaylistPageState extends State<AddPlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Add Playlist',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Playlist ID',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.loose,
              child: RaisedButton(
                child: Icon(
                  Icons.download_sharp,
                  size: 48,
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(16),
                color: Colors.white,
                shape: CircleBorder(),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
