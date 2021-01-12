import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_optics/models/products.dart';
import 'package:universal_optics/views/pages/home_page.dart';

class ProductStates {
  String _title = 'Achromatic Lenses';
  List<String> _image = ['img_achromatic_lens.jpg'];
  String _description =
      'We are renowned as one of the most prominent Achromatic Lens Manufacturers in India. The Achromatic Lenses (achromat) are designed to eliminate chromatic and spherical aberrations inherent in singlet lenses. When used on-axis, an achromatic lens focuses unparallel input beam to a perfect point, limited only by the effects of diffraction. This performance can be achieved over a broadband of wavelength. Achromatic Doublet Lens is used to collimate and focus laser beams. They can also be used for high-quality imaging on-axis.';
  List<Products> _productsList;
  Widget _selectedBody = HomePage();
  String _selectedPage = 'HOME';

  Widget get selectedBody => _selectedBody;
  String get pageName => _selectedPage;
  List<Products> get productsList => _productsList;
  String get title => _title;
  String get description => _description;
  List<String> get image => _image;

  void setSelectedProduct(String title, List<String> image, String desc) {
    _title = title;
    _description = desc;
    _image = image;
  }

  void setSelectedBody(Widget selected, String name) {
    _selectedBody = selected;
    _selectedPage = name;
  }

  void getProducts() async {
    _productsList = productsFromJson(
        await rootBundle.loadString("lib/resources/assets/products.json"));
  }
}
