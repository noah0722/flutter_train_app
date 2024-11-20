import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final bool isDepature;
  final List<String> stations = const [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
    '부산'
  ];

  const StationListPage({
    super.key,
    required this.isDepature,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(isDepature ? '출발역' : '도착역'),
      ),
      body: Column(
        children: stations
            .map((station) => GestureDetector(
                  onTap: () {
                    Navigator.pop(context, station);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        station,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
