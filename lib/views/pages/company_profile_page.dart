import 'package:flutter/material.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/views/responsive/about_us/about_us.dart';

class CompanyProfilePage extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AboutUs(),
      ],
    );
  }
}
