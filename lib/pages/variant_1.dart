import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zaptek_tini/bottom_nav_bar_widget.dart';
import 'package:zaptek_tini/sizing_converter.dart';

Color blue = const Color.fromRGBO(26, 148, 255, 1);
Color grey = const Color.fromRGBO(128, 128, 137, 1);
Color lightGrey = const Color.fromRGBO(0, 0, 0, 0.1);
List<String> promoAssets = [
  'assets/image_1.png',
  'assets/image_2.png',
  'assets/image_3.png',
  'assets/image_4.png'
];
List<String> titles = ['Discount all Excelsa', 'Discount all Liberica', '', ''];

class Variant1 extends StatefulWidget {
  const Variant1({super.key});

  @override
  State<Variant1> createState() => _Variant1State();
}

class _Variant1State extends State<Variant1> {
  ScrollController scrollController = ScrollController();
  double scrollPosition = 0;

  scrollListener(){
    setState(() {
      scrollPosition = scrollController.position.pixels;
    });
  }
  @override
  void initState(){
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 250, 1),
      appBar: scrollPosition == 0
        ? AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(width: horizontalConverter(10, context)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
                Text(
                  'Sample restaurant',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ],
            )
          ],
        ),
        actions: [
          Image.asset('assets/nav_pill.png'),
          SizedBox(width: horizontalConverter(8, context)),
        ],
      )
      : AppBar(
        title: Text(
          'Sample restaurant',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w700, fontSize: 18),
        ),
        actions: [
          Image.asset('assets/nav_pill.png'),
          SizedBox(width: horizontalConverter(8, context)),
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontalConverter(16, context)),
        child: ListView(
          controller: scrollController,
          children: [
            Image.asset('assets/header.png'),
            SizedBox(height: verticalConverter(20, context)),
            Center(
              child: SmoothPageIndicator(
                controller: PageController(),
                count: 5,
                effect: WormEffect(
                  dotColor: lightGrey,
                  activeDotColor: blue,
                  dotHeight: verticalConverter(2, context),
                  dotWidth: horizontalConverter(24, context),
                  spacing: horizontalConverter(4, context),
                ),
              ),
            ),
            SizedBox(height: verticalConverter(20, context)),
            Container(
              width: horizontalConverter(328, context),
              height: verticalConverter(130, context),
              decoration: const BoxDecoration(color: Colors.white),
              child: Center(
                child: SizedBox(
                  width: horizontalConverter(328, context),
                  height: verticalConverter(122, context),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/pickup.png'),
                          Text(
                            'Store pickup',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Best quality',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: grey),
                          ),
                        ],
                      ),
                      SizedBox(width: horizontalConverter(16, context)),
                      SizedBox(
                        height: verticalConverter(48, context),
                        child: VerticalDivider(
                          width: horizontalConverter(48, context),
                          thickness: 1,
                          color: const Color.fromRGBO(235, 235, 240, 1),
                        ),
                      ),
                      SizedBox(width: horizontalConverter(16, context)),
                      Column(
                        children: [
                          Image.asset('assets/delivery.png'),
                          Text(
                            'Delivery',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Always on time',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: verticalConverter(10, context)),
            Container(
              width: horizontalConverter(328, context),
              height: verticalConverter(144, context),
              decoration: const BoxDecoration(color: Colors.white),
              child: Center(
                child: SizedBox(
                  width: horizontalConverter(328, context),
                  height: verticalConverter(112, context),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: horizontalConverter(20, context)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: verticalConverter(10, context)),
                              Text(
                                'Online reservation',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Table booking',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: grey,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Image.asset('assets/reservation.png'),
                          SizedBox(width: horizontalConverter(20, context)),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: horizontalConverter(20, context)),
                          SizedBox(
                            height: verticalConverter(32, context),
                            width: horizontalConverter(160, context),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: blue,
                                  elevation: 0,
                                  side: BorderSide(color: blue)),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/reservation_icon.png'),
                                  Text(
                                    'Reserve a table',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          SizedBox(
                            height: verticalConverter(32, context),
                            width: horizontalConverter(130, context),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: blue,
                                  elevation: 0,
                                  side: BorderSide(color: blue)),
                              onPressed: () {},
                              child: Text(
                                'My reservations',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: blue,
                                ),
                                softWrap: false,
                              ),
                            ),
                          ),
                          SizedBox(width: horizontalConverter(12, context)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: verticalConverter(16, context)),
            Text(
              'Promotion campaign',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: verticalConverter(10, context)),
            SizedBox(
              height: verticalConverter(458, context),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: horizontalConverter(16, context),
                  mainAxisSpacing: verticalConverter(16, context),
                ),
                itemBuilder: (context, index) {
                  return PromotionCard(
                    assetName: promoAssets[index],
                    title: titles[index],
                    subtitle: '20% in all stores',
                    timeRange: '20/04/20 - 06/09/2020',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard(
      {super.key,
      required this.assetName,
      required this.title,
      required this.subtitle,
      required this.timeRange});

  final String assetName;
  final String title;
  final String subtitle;
  final String timeRange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontalConverter(156, context),
      height: verticalConverter(221, context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(assetName),
          Text(
            title,
            style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          Text(
            subtitle,
            style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          Text(
            timeRange,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: grey,
            ),
          ),
        ],
      ),
    );
  }
}
