import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sendgrid_mailer/sendgrid_mailer.dart' as sg;
import 'package:sendgrid_mailer/sendgrid_mailer.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/utils/styles.dart';

class ContactUs extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getContactUsMobile(),
      tablet: _getContactUsTablet(),
      desktop: _getContactUsDesktop(),
    );
  }

  Widget _getContactUsDesktop() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(350)),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      title: Text('Mukul Garg (Proprieter)'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      title: Text(
                          'D-1, Industrial Estate, Roorkee, Uttarakhand, India - 247667'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.black,
                      ),
                      title: Text('+91-9837039970, +91-9897152595'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text('+91-1332-262070, +91-1332-262735'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone_bluetooth_speaker_outlined,
                        color: Colors.black,
                      ),
                      title: Text('+91-1332-262735'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      title: Text('uniopt@hotmail.com'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.desktop_mac,
                        color: Colors.black,
                      ),
                      title: Text('http://www.universaloptics.in'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.web,
                        color: Colors.black,
                      ),
                      title: Text(
                          'https://www.exportersindia.com/universaloptics/'),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width(50)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("CONTACT US", style: Style.h4),
                  ),
                  SizedBox(
                    height: height(50),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Name",
                      hintStyle: Style.caption,
                    ),
                  ),
                  SizedBox(
                    height: height(30),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "E-mail",
                      hintStyle: Style.caption,
                    ),
                  ),
                  SizedBox(
                    height: height(30),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "Company",
                        hintStyle: Style.caption),
                  ),
                  SizedBox(
                    height: height(60),
                  ),
                  TextFormField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Message",
                      hintStyle: Style.caption,
                    ),
                  ),
                  SizedBox(
                    height: height(50),
                  ),
                  Container(
                    width: fullWidth(),
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {
                        final mailer = sg.Mailer(
                            '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');

                        final toAddress =
                            Address('siddhantverma2007@gmail.com');
                        final fromAddress = Address('test123@gmail.com');
                        final content = Content('text/plain', 'Hello World!');
                        final subject = 'Hello Subject!';
                        final personalization = Personalization([toAddress]);

                        final email = Email(
                            [personalization], fromAddress, [content], subject);

                        mailer
                            .send(email)
                            .then((result) => {print("SENDED: ${result}")})
                            .catchError((e) {
                          print("ERROR: ${e.message}");
                        });
                      },
                      child: Text('SEND MESSAGE',
                          style: Style.button.copyWith(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getContactUsTablet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(250)),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      title: Text('Mukul Garg (Proprieter)'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      title: Text(
                          'D-1, Industrial Estate, Roorkee, Uttarakhand, India - 247667'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.black,
                      ),
                      title: Text('+91-9837039970, +91-9897152595'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text('+91-1332-262070, +91-1332-262735'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone_bluetooth_speaker_outlined,
                        color: Colors.black,
                      ),
                      title: Text('+91-1332-262735'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      title: Text('uniopt@hotmail.com'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.desktop_mac,
                        color: Colors.black,
                      ),
                      title: Text('http://www.universaloptics.in'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.web,
                        color: Colors.black,
                      ),
                      title: Text(
                          'https://www.exportersindia.com/universaloptics/'),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width(50)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text("CONTACT US", style: Style.h4),
                  ),
                  SizedBox(
                    height: height(50),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Name",
                      hintStyle: Style.caption,
                    ),
                  ),
                  SizedBox(
                    height: height(30),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "E-mail",
                      hintStyle: Style.caption,
                    ),
                  ),
                  SizedBox(
                    height: height(30),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "Company",
                        hintStyle: Style.caption),
                  ),
                  SizedBox(
                    height: height(60),
                  ),
                  TextFormField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Message",
                      hintStyle: Style.caption,
                    ),
                  ),
                  SizedBox(
                    height: height(50),
                  ),
                  Container(
                    width: fullWidth(),
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {},
                      child: Text('SEND MESSAGE',
                          style: Style.button.copyWith(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getContactUsMobile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(350)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: width(50)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("CONTACT US", style: Style.h4),
                ),
                SizedBox(
                  height: height(50),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Name",
                    hintStyle: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(30),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "E-mail",
                    hintStyle: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(30),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Company",
                      hintStyle: Style.caption),
                ),
                SizedBox(
                  height: height(60),
                ),
                TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Message",
                    hintStyle: Style.caption,
                  ),
                ),
                SizedBox(
                  height: height(50),
                ),
                Container(
                  width: fullWidth(),
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () {},
                    child: Text('SEND MESSAGE',
                        style: Style.button.copyWith(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height(80),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: Text('Mukul Garg (Proprieter)'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  title: Text(
                      'D-1, Industrial Estate, Roorkee, Uttarakhand, India - 247667'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.black,
                  ),
                  title: Text('+91-9837039970, +91-9897152595'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text('+91-1332-262070, +91-1332-262735'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.phone_bluetooth_speaker_outlined,
                    color: Colors.black,
                  ),
                  title: Text('+91-1332-262735'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  title: Text('uniopt@hotmail.com'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.desktop_mac,
                    color: Colors.black,
                  ),
                  title: Text('http://www.universaloptics.in'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.web,
                    color: Colors.black,
                  ),
                  title:
                      Text('https://www.exportersindia.com/universaloptics/'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
