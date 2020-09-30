import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

enum Category { IT, Agriculture, Education, Tourism }

class Principal extends StatefulWidget {
  Principal({Key key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          color: Colors.grey[800],
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.notifications_none,
                color: Colors.grey[800],
              )),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Find your",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Dream Job anywhere",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 24,
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.only(right: 30),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 16, left: 24),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job Category",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildJobCategory(Category.IT, "55", Colors.orange[200]),
                      buildJobCategory(
                          Category.Education, "21", Colors.blue[200]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildJobCategory(
                          Category.Agriculture, "89", Colors.green[200]),
                      buildJobCategory(Category.Tourism, "12", Colors.red[200]),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job opening",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 16,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Full Stack Web", "0910 1231 123", "Cebu City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Full Stack Mobile", "0910 1231 123", "Cebu City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Cloud Engineer", "0910 1231 123", "New York City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 16,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Full Stack Web", "0910 1231 123", "Cebu City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Full Stack Mobile", "0910 1231 123", "Cebu City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Cloud Engineer", "0910 1231 123", "New York City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 16,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Full Stack Web", "0910 1231 123", "Cebu City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Full Stack Mobile", "0910 1231 123", "Cebu City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              child: PageView(
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("Cloud Engineer", "0910 1231 123", "New York City",
                      "8am to 5pm", "30,000 - 50,000"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildJobCategory(Category category, String total, Color color) {
    return Expanded(
      child: Container(
        height: 80,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200],
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(0.5),
              ),
              child: Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Text(
                    (category == Category.IT
                        ? "IT"
                        : category == Category.Agriculture
                            ? "AT"
                            : category == Category.Tourism ? "TO" : "ED"),
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category == Category.IT
                      ? "IT"
                      : category == Category.Education
                          ? "Education"
                          : category == Category.Tourism
                              ? "Tourism"
                              : "AgriTech",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "No. of jobs: " + total,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildVet(
      String name, String phone, String location, String time, String salary) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 16, bottom: 16, top: 4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        border: Border.all(
          width: 0,
          color: Colors.grey[300],
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 98,
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey[800],
                  size: 20,
                ),
                Text(location,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  Icons.timer,
                  color: Colors.grey[800],
                  size: 20,
                ),
                Text(time,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
              Row(children: [
                Icon(
                  Icons.monetization_on,
                  color: Colors.grey[800],
                  size: 20,
                ),
                Text(salary,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  Icons.phone,
                  color: Colors.grey[800],
                  size: 20,
                ),
                Text(phone,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
