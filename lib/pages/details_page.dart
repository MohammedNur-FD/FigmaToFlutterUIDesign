import 'package:fig_to_flutter/custom_widgets/booking_details.dart';
import 'package:fig_to_flutter/custom_widgets/details_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});
  static const String routeName = 'details_page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          DetailsAppBar(),
          BookingDetails(),
        ],
      ),
    );
  }
}
