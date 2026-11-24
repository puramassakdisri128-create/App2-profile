import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'puramad67copahjandag',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),

      body: Column(
        children: [

          // ส่วนที่ 1 รูปโปรไฟล์และจำนวนต่าง ๆ
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage:
                  AssetImage('assets/347175857.jpeg'),
                ),

                const SizedBox(width: 20),

                Expanded(
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: const [
                      Column(
                        children: [
                          Text(
                            '99k',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('โพสต์'),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            '9.7M',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('ผู้ติดตาม'),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            '50',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('กำลังติดตาม'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ส่วนที่ 2 ชื่อและคำบรรยาย
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'นางสาว ปุรามาศ ศักดิ์ศรี',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  'คนไทยไม่เข้าใจภาษาc#',
                  style: TextStyle(fontSize: 13),
                ),

                Text(
                  'คนไทยอยากกินบุพเฟ่',
                  style: TextStyle(fontSize: 13),
                ),

                Text(
                  '✨',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // ส่วนที่ 3 ปุ่มติดตามและปุ่มข้อความ
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('ติดตาม'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      side: const BorderSide(
                        color: Colors.grey,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('ข้อความ'),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // ส่วนที่ 4 ไอคอนรูปภาพและโปรไฟล์
          const Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.grid_on,
                size: 25,
              ),
              Icon(
                Icons.person_outline,
                size: 25,
              ),
            ],
          ),

          const SizedBox(height: 10),

          // ส่วนที่ 5 รูปภาพ 3 ภาพจากอินเทอร์เน็ต
          Row(
            children: [
              Expanded(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFWwcJr4Wfu-ECy0RcNjDyDccSlhOr-zRcFARBEtN9yA&s=10',
                  width: 200,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),

              Expanded(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR21Y72BfhaVhgHvGkc77UzFwffzAiwoctu87bGPGI28g&s=10',
                  width: 200,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),

              Expanded(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPh28UEAxXam0Xmnib23XOTIGFNHHTBiieOK_iw3oAVw&s=10',
                  width: 200,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
