import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF7F0),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC1CC),
        title: Text('Profil Saya', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage('https://your-image-url.com/profile.jpg'), 
              ),
              SizedBox(height: 20),
              Text(
                'Sintiarani Febyan Putri',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF6699),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'NRP: 5026221044',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Color(0xFFFDECEF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.menu_book_rounded, color: Color(0xFFFF6699), size: 28),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Aku sedang dalam perjalanan menyenangkan belajar Bahasa Jepang 🎌",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "🌿 Seberapa Aku Menyukai Belajar Bahasa Jepang",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      ProgressItem(label: '漢字 (Kanji)', value: 0.9, color: Color(0xFFB2D8B2)),
                      ProgressItem(label: '文法 (Bunpou)', value: 0.85, color: Color(0xFFFFC1CC)),
                      ProgressItem(label: '言葉 (Kotoba)', value: 0.8, color: Color(0xFFB2D8B2)),
                      ProgressItem(label: 'ひらがな (Hiragana)', value: 0.7, color: Color(0xFFFFC1CC)),
                      ProgressItem(label: 'カタカナ (Katakana)', value: 0.5, color: Color(0xFFB2D8B2)),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Follow my journey as I learn Japanese 🇯🇵✨',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressItem extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const ProgressItem({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: value,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    minHeight: 12,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text('${(value * 100).toInt()}%'),
            ],
          ),
        ],
      ),
    );
  }
}
