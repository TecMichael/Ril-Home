import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        // onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50.h,
                  width: 74.w,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(12),
                      ),
                      color: Colors.grey.shade300),
                  child: Row(
                    children: [
                      Text(
                        'Tell us what\n you think',
                        style: GoogleFonts.roboto(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 180.w,top: 31),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Beta', style: GoogleFonts.roboto(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Ril Home',
                  style: GoogleFonts.roboto(
                      fontSize: 34.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 100.w),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/home.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // height: 120.h,
                      width: 410.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 9.5,
                            offset: const Offset(2, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7.w),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/home.jpg'),
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Padding(
                                padding: EdgeInsets.only(top: 21.h, left: 7.w),
                                child: Row(
                                  children: [
                                    Text(
                                      'Kevin Dukkon . 3mins ago',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Whatever do i write here, this will\nstill be pretty difficult to achieve the\nmax nooded limit.',
                                  style: GoogleFonts.roboto(
                                      fontSize: 15.sp,
                                      color: Colors.grey.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 90.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 9.5,
                                        offset: const Offset(2, 1),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.telegram,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            'Reply',
                                            style: GoogleFonts.roboto(
                                                fontSize: 15.sp,
                                                color: Colors.grey.shade900,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5.h),
            Container(
              // height: 120.h,
              width: 410.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 9.5,
                    offset: const Offset(2, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 7.w),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/home.jpg'),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Padding(
                        padding: EdgeInsets.only(top: 21.h, left: 7.w),
                        child: Row(
                          children: [
                            Text(
                              'Kevin Dukkon . 3mins ago',
                              style: GoogleFonts.roboto(
                                  fontSize: 12.sp, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Whatever do i write here, this will\nstill be pretty difficult to achieve the\nmax needed limit.',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, bottom: 5, left: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 125.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: Colors.purple.shade100,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 9.5,
                                offset: const Offset(2, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 5.w),
                                  const Icon(
                                    Icons.messenger,
                                    color: Colors.purple,
                                    size: 22,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '17 responses',
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 90.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 9.5,
                                offset: const Offset(2, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.telegram,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    'Reply',
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              // height: 120.h,
              width: 410.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 9.5,
                    offset: const Offset(2, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 7.w),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/home.jpg'),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Padding(
                        padding: EdgeInsets.only(top: 21.h, left: 7.w),
                        child: Row(
                          children: [
                            Text(
                              'Kevin Dukkon . 3mins ago',
                              style: GoogleFonts.roboto(
                                  fontSize: 12.sp, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Whatever do i write here, this will\nstill be pretty difficult to achieve the\nmax needed limit.',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, bottom: 5, left: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: Colors.purple.shade100,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 9.5,
                                offset: const Offset(2, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 7.w),
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.purple,
                                    size: 22,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '4 likes',
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 90.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 9.5,
                                offset: const Offset(2, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.telegram,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    'Reply',
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
