import 'package:flutter/material.dart';
import 'package:git_intro/constants/r.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

enum Gender { lakilaki, perempuan }

class _RegisterPageState extends State<RegisterPage> {
  String gender = "Laki-laki";
  List<String> classSlta = ["10", "11", "12"];
  String selectedClass = "10";

  onTapGender(Gender genderInput) {
    if (genderInput == Gender.lakilaki) {
      gender = "Laki-laki";
    } else {
      gender = "Perempuan";
    }
    setState(() {});
  }

  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Yuk isi data diri",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFD6D6D6),
                ),
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "Isi Email Anda",
                  hintStyle: TextStyle(
                    color: Color(0XFFAAAAAA),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Nama Lengkap",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFD6D6D6),
                ),
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "Isi Nama Lengkap Anda",
                  hintStyle: TextStyle(
                    color: Color(0XFFAAAAAA),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Jenis Kelamin",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            //membuat tombol laki-laki dan perempuan
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: gender == "Laki-laki"
                            ? R.colors.primary
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                width: 1, color: R.colors.greyBorder)),
                      ),
                      onPressed: () {
                        onTapGender(Gender.lakilaki);
                      },
                      child: Text(
                        "Laki-laki",
                        style: TextStyle(
                          fontSize: 14,
                          color: gender == "Laki-laki"
                              ? Colors.white
                              : Color(0xff282828),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: gender == "Perempuan"
                            ? R.colors.primary
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                width: 1, color: R.colors.greyBorder)),
                      ),
                      onPressed: () {
                        onTapGender(Gender.perempuan);
                      },
                      child: Text(
                        "Perempuan",
                        style: TextStyle(
                          fontSize: 14,
                          color: gender == "Perempuan"
                              ? Colors.white
                              : Color(0xff282828),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //batas membuat tombol laki-laki dan perempuan
            SizedBox(height: 5),

            // membuat dropdown
            Text(
              "Kelas",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 5),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFD6D6D6),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                    value: selectedClass,
                    items: classSlta
                        .map(
                          (e) => DropdownMenuItem<String>(
                            child: Text(e),
                            value: e,
                          ),
                        )
                        .toList(),
                    onChanged: (String? val) {
                      selectedClass = val!;
                      setState(() {});
                    }),
              ),
            ),

            SizedBox(height: 5),
            // Batas dropdown

            Text(
              "Nama Sekolah",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFD6D6D6),
                ),
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "Isi Nama Sekolah Anda",
                  hintStyle: TextStyle(
                    color: Color(0XFFAAAAAA),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Color(0xff3A7FD5),
                    fixedSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                    )),
                onPressed: () {
                  print(nameController.text);
                  //Navigator.of(context).push(MaterialPageRoute(
                  //builder: (context) => const RegisterPage()));
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  //Image.asset("assets/auth/ic_apple.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "Daftar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
