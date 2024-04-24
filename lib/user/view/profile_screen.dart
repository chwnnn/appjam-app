import 'package:appjam_app/const/text_style.dart';
import 'package:appjam_app/user/view/id_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  final String name;
  final String age;

  const ProfileScreen({required this.name, required this.age, super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _roleController = TextEditingController();
  int selectedImageIndex = -1;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/solid-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/grey-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                    SvgPicture.asset(
                      'asset/imgs/grey-leaf.svg',
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  '프로필을 선택해주세요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFF181717),
                    fontSize: 26,
                  ),
                ),
                Text(
                  '엄마, 아빠, 아들, 딸 중 해당하는 프로필을 골라주세요',
                  style: YeongdeokSea.copyWith(
                    color: Color(0xFFBDBAB7),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildImageContainer(0, 'asset/imgs/sori5.png'),
                          SizedBox(width: 20),
                          _buildImageContainer(1, 'asset/imgs/sori6.png'),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildImageContainer(2, 'asset/imgs/sori3.png'),
                          SizedBox(width: 20),
                          _buildImageContainer(3, 'asset/imgs/sori4.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '다음으로',
                      style: YeongdeokSea.copyWith(
                        color: Color(0xFF7A7471),
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        final role = _roleController.text;
                        if (role.isEmpty) {
                          return; // Handle empty ID input
                        }
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => IdScreen(
                              name: widget.name,
                              age: widget.age,
                              role: role,
                            ),
                          ),
                        );
                      },
                      child: SvgPicture.asset('asset/imgs/Frame.svg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(int index, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: selectedImageIndex == index
              ? Color(0xFFBDBAB7)
              : Colors.transparent,
          width: 2.0,
        ),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedImageIndex = index;
          });
        },
        child: Image.asset(imagePath),
      ),
    );
  }
}
