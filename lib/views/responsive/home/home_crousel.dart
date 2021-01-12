import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:universal_optics/states/product_states.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/views/pages/products_page.dart';
import 'package:universal_optics/views/widgets/home_crousel_widgets.dart';

class HomeCrousel extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return CarouselSlider(
        items: [
          HomeCrouselWidgets(
              '${imagePath}img_magnifying_glass.jpg',
              'Magnifying Glass',
              'For the best quality Magnifying glasses', () {
            final ReactiveModel<ProductStates> modelRM =
                RM.get<ProductStates>();
            modelRM.setState((s) => s.setSelectedProduct(
                'Glass Magnifier',
                ['img_magnifier.jpg'],
                'We are enlisted amidst the most preeminent Magnifier Lens Manufacturers and Suppliers in India. We offer two types of Glass Magnifier i.e. Spherical Lens Magnifier and Jewelry Triplet Magnifier. The spherical lens magnifier is perfect for reading the small print in books, newspapers or maps. A bright LED light illuminates the viewing area. An easy on/off switch is located on the handle. The high powered lens is distortion free, shatter proof and scratch resistant. Overall length of magnifier is 6 inch. Spherical lens magnifier requires 3 AAA batteries which are not included. Some of our best sellers are the 10x Jewelry Triplet Loupes. 10x Jewelry Triplet magnifier is the type of the loupe used by professional jewelers to grade diamonds and other gemstones. Anything in a gemstone that requires a loupe more powerful than 10x is usually not included on a grading report since it cannot be seen by the human eye without a loupe! Hastings Triplet loupe are designed with black framing around the triplet lens to eliminate reflections that alter the color of the object being viewed with the loupe'));
            modelRM
                .setState((s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
          }),
          HomeCrouselWidgets('${imagePath}img_telescope.jpg', 'Telescope',
              'For the best quality Telescope', () {
            final ReactiveModel<ProductStates> modelRM =
                RM.get<ProductStates>();
            modelRM.setState((s) => s.setSelectedProduct(
                'Telescopes',
                ['img_telescope.jpg'],
                'Our Optical Telescopes are designed for daytime observers. The objective lens is large enough to produce crisp, bright images. Our Discovery Telescopes are the first choice of instrument for anyone who has a great view of the nature or the surrounding. It makes an idea choice of gift for the kids or a friend who has just shown interest in exploring the optical instrument. While you can bring a big smile on their face, it will not cut a hole in your pocket. Superior quality Metal or wooden stands can also be supplied, if required. In addition to this, we are one of the major Telescopes Exporters and Suppliers in India.'));
            modelRM
                .setState((s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
          }),
          HomeCrouselWidgets('${imagePath}img_prism.jpg', 'Prism',
              'For the best quality Prism', () {
            final ReactiveModel<ProductStates> modelRM =
                RM.get<ProductStates>();
            modelRM.setState((s) => s.setSelectedProduct(
                'Prisms',
                [
                  "img_prism.jpg",
                  "img_penta_prism.jpg",
                  "img_corner_prism.jpg"
                ],
                'The company has carved a niche as one of the most prominent Prisms Exporters and Suppliers in the national as well as international market. Right-angle prism is the most common type of prisms. It is used to re-direct a beam of light at 90 degrees from the incident direction or used as a 180 beam retro-reflector. They are often coated with various optical coatings to form cubic beam splitters and color separation cubes used in various projection systems. High transmission can be achieved, using the hypotenuse face in total internal reflection (TIR), with an antireflection coating on the entrance and exit faces. The various types of prisms available with us are as follow : \n\nPenta Prism\n\nBeam Splitter Penta Prism\n\nCorner Cube\n\nDove Prism\n\nDispersive Prism\n\nEquilateral Prism\n\nAnamorphic Prism\n\nWedge'));
            modelRM
                .setState((s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
          }),
        ],
        options: CarouselOptions(
          height: height(750),
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          carouselController: CarouselController(),
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
