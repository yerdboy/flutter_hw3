import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black54),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _headerImage() {
  return Image(
    image: NetworkImage(
      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFhUWFRUVFRYVFRUVFhgVFRUWFxcVFRYYHSggGBolGxUVITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGy0mHyUtLS0vKy0vLS0tLS0tLS0tLS0tKy0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLf/AABEIALgBEgMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAACAwEEBQAGBwj/xAA/EAABAwIEBAQFAwIDBwUBAAABAAIRAyEEEjFBBVFhcSKBkaEGE7HR8DLB4VLxQmKiFBYjQ4KS0hVyssLiB//EABoBAAMBAQEBAAAAAAAAAAAAAAECAwAEBQb/xAAtEQACAgEDAwIFBAMBAAAAAAAAAQIRAxIhMQQTURRBYYGRofAicbHRMkJSBf/aAAwDAQACEQMRAD8AxA1GAiDUwUTyK+mPISb4FgIw1EGpjWrGADFORPaxGKa1hoXQZZw6SlvYtDB0fFHMEeyXWooXuBrYz8q7KrRpoTTT2JRWLVEJ7mqAwmwTCsTlRinz8gn5A3qfYfcpTyl5DxyAUtxRlRCFAsXC5FC4hK0MmAQohFC6EtDWRC6FKhChwSFBCNQUAi4UQmQohMAUWqMqcGKxRwhcjqo1WZ5YoNArb/8ASXAS7TVJdR7fnJMshnjMR1JC6mtutgIE6KpWwkfllWOVMnLGzMLEJYtJuEJEph4Y8RIj6qvdihO2zIyKFuDhZ/pK5b1EQ9mRYpRIlbBFhCxWqxTrOGhXHKFuzpxZtCaH4ikJndC2mj+eXHxXVqjTad/X7rN0jbSdoTTpJ7aCtswp5K3Qwqk5jKJRw1GHNPUJvEcJlcR1P1WzR4cTstHjvDLtcBqAT3gSovMtaG0fpZ4V1FJfTW9XwcJR4bAzVPC3Ybnt06roWRe5HQ/YxWYYu7bk6BRUIbZvmdz9grmLrTZogDQLOeFWNvknKo8CnuSyE0hDCoRYohQmkISFjAFRCKF0JGMgMqghHC5K0OhcKEcLiEoyAUEIoXQgMCAmCnaUBWnwt1P/AJgEDnzQboZbg4HCH9ZHhB9Vb+VTZVEmx0+xSeI40RlZZvLqswP39kKbDaR6bGVMpIzHK7TcLB4gAD4bjml4jFuIAmY3SqlQEDnumhGjSlZ',
    ),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    children: <Widget>[
      Text(
        'Tuesday - May 22',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Lorem ipsum dolor sit amet conseqtator ',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.wb_sunny, color: Colors.yellow),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '15 Clear',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Murmanskaya oblast, Murmansk',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}C*',
          style: TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(),
        ),
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.black),
      Icon(Icons.star, size: 15.0, color: Colors.black),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text(
        'Info with openweathermap.org',
        style: TextStyle(fontSize: 15.0),
      ),
      stars,
    ],
  );
}
