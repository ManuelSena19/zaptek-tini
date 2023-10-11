import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bottomNavBar(){
  return BottomNavigationBar(
    selectedItemColor: const Color.fromRGBO(26, 148, 255, 1),
    unselectedItemColor: const Color.fromRGBO(128, 128, 137, 1),
    selectedFontSize: 10,
    unselectedFontSize: 10,
    selectedLabelStyle: GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      color: const Color.fromRGBO(26, 148, 255, 1),
    ),
    unselectedLabelStyle: GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(26, 148, 255, 1),
    ),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    items: [
      BottomNavigationBarItem(
        icon: Image.asset('assets/home.png'),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/store.png'),
        label: 'Stores',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/order.png'),
        label: 'Order',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/profile.png'),
        label: 'Profile',
      ),
    ],
  );
}