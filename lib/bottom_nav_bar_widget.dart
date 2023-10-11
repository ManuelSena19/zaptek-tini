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
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.store_mall_directory_outlined),
        label: 'Stores',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list_alt_outlined),
        label: 'Order',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: 'Profile',
      ),
    ],
  );
}