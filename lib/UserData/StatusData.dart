// ignore_for_file: file_names

class StatusData {
  final String name;
  // final String message;
  final String time;
  final String profile;
  // final Icon callType;
  StatusData({
    required this.name,
    // required this.message,
    required this.time,
    required this.profile,
    // required this.callType
  });
}

List<StatusData> statusData = [
  StatusData(
    name: 'Mohd Maroof',
    time: '6:13 PM',
    profile: 'images/pic.jpg',
  ),
  StatusData(
    name: 'Kayam Khan',
    time: '12:13 PM',
    profile: 'images/pic.jpg',
  ),
  StatusData(
    name: 'Shihan',
    time: '10:13 AM',
    profile: 'images/pic1.jfif',
  ),
  StatusData(
    name: 'Ammi',
    time: '11:25 AM',
    profile: 'images/pic4.jfif',
  ),
  StatusData(
    name: 'Bhai',
    time: '12:13 PM',
    profile: 'images/pic3.jfif',
  ),
  StatusData(
    name: 'Bhaiu',
    time: 'Yesterday',
    profile: 'images/icon.png',
  ),
];
