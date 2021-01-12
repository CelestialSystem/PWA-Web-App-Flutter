import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/views/responsive/contact_us/contact_us.dart';

class ContactUsPage extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return Column(
      children: [
        ContactUs(),
      ],
    );
  }
}
