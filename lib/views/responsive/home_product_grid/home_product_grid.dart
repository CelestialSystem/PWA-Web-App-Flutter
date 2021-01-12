import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:universal_optics/states/product_states.dart';
import 'package:universal_optics/utils/base_stateless_widget.dart';
import 'package:universal_optics/views/pages/products_page.dart';
import 'package:universal_optics/views/widgets/home_product_grid_item.dart';

class HomeProductGrid extends BaseStatelessWidget {
  @override
  Widget setView(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _getHomeProductGridMobile(),
      tablet: _getHomeProductGridTablet(),
      desktop: _getHomeProductGridDesktop(),
    );
  }

  Widget _getHomeProductGridDesktop() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(350)),
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 0, mainAxisSpacing: 0),
        children: [
          HomeProductGridItem(
              image: '${imagePath}img_magnifier.jpg',
              title: 'Glass Magnifier',
              callback: () {
                _navigateToPage(
                    name: 'Glass Magnifier',
                    image: ['img_magnifier.jpg'],
                    description:
                        'We are enlisted amidst the most preeminent Magnifier Lens Manufacturers and Suppliers in India. We offer two types of Glass Magnifier i.e. Spherical Lens Magnifier and Jewelry Triplet Magnifier. The spherical lens magnifier is perfect for reading the small print in books, newspapers or maps. A bright LED light illuminates the viewing area. An easy on/off switch is located on the handle. The high powered lens is distortion free, shatter proof and scratch resistant. Overall length of magnifier is 6 inch. Spherical lens magnifier requires 3 AAA batteries which are not included. Some of our best sellers are the 10x Jewelry Triplet Loupes. 10x Jewelry Triplet magnifier is the type of the loupe used by professional jewelers to grade diamonds and other gemstones. Anything in a gemstone that requires a loupe more powerful than 10x is usually not included on a grading report since it cannot be seen by the human eye without a loupe! Hastings Triplet loupe are designed with black framing around the triplet lens to eliminate reflections that alter the color of the object being viewed with the loupe');
              }),
          HomeProductGridItem(
              image: '${imagePath}img_optical_window.jpg',
              title: 'Optical Window',
              callback: () {
                _navigateToPage(
                    name: "Optical Windows",
                    image: ["img_optical_window.png"],
                    description:
                        "For the best quality Optical Windows, we are the best destination for you. Our Optical Glass Windows are used for protecting fragile optical components inside an assembly. AR coated BK7 glass window is the most common type. They have good performance over visible and near infrared wavelength region. We also offer fused silica windows and sapphire windows for wider spectral region and harsher environment. BK7 window is the lowest cost type of all three. Moreover, the company is recognized as one of the ace Polished Optical Windows Exporters and Suppliers in India.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_beam_splitter.jpg',
              title: 'Beam Splitters',
              callback: () {
                _navigateToPage(
                    name: "Beam Splitter",
                    image: ["img_beam_splitter.jpg"],
                    description:
                        "We have carved a niche as one of the most staggering Optical Beam Splitter Manufacturers and Suppliers in India. The Polarizing cube Beam Splitters split randomly polarized beams into two orthogonal, linearly polarized components: S-polarized light is reflected at a 90Â° angle while P-polarized light is transmitted. Each Polarizing Beam Splitters consists of a pair of precision high tolerance right angle prisms cemented together with a dielectric coating on the hypotenuse of one of the prisms. A multi-layer antireflective coating can be applied to each face of the Beam Splitter in order to produce maximum transmission efficiency.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_glass_mould.jpg',
              title: 'Glass Moulds',
              callback: () {
                _navigateToPage(
                    name: "Glass Moulds",
                    image: ["img_glass_mould.jpg"],
                    description:
                        "We are looked upon as one of the most overruling Pressed Glass Moulds Manufacturers and Optical Glass Moulds Suppliers in India. We have a complete spectrum of Optical Glasses manufactured by Schott, Ohara, Pilkington and many others. Glass Moulds include the full index range in ingot, block, and strip form. We store a tremendous inventory of raw optical materials to better service the needs of our customers. We take great pride in our inventory to insure accuracy and traceability. One of our strengths is being able to select the materials we carry to various quality levels of straie, bubbles, homogeneity, birefringence, and transmission. We can then machine these selected materials to the blank sizes you require.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_opto_components.jpg',
              title: 'Opto-Mechanical Component',
              callback: () {
                _navigateToPage(
                    name: "Opto-Mechanical Components",
                    image: ["img_opto_components.jpg"],
                    description:
                        "We manufacture various types of high precision assemblies and sub assemblies as per customers requirements. We maintain high tolerances for our Opto-Mechanical Components using our CNC machines. They are designed and manufactured as per the global standard and quality. You can send your specifications and samples and we will be happy to serve you accordingly. We offer our Opto-Mechanical Components at the most discounted rates as against the ordinary market. Additionally, we are one of the most preferred Micro-Opto-Mechanical Components Manufacturers and Suppliers in the country.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_meniscus_lens.jpg',
              title: 'Meniscus Lenses',
              callback: () {
                _navigateToPage(
                  name: "Meniscus Lenses",
                  image: ["img_meniscus_lens.png"],
                  description:
                      "Meniscus Lenses made available by us are accessible in both positive and negative focal length. The Positive Meniscus Lenses are a convex-concave lens with thicker center than the edge where as negative meniscus lenses are a convex-concave lens with thinner center as compared to the edge. They are highly polished and used in various scientific equipments. Besides, we are one of the eminent Meniscus Lenses Manufacturers as well as Suppliers in India.",
                );
              }),
          HomeProductGridItem(
              image: '${imagePath}img_photo_enlager.jpg',
              title: 'Photo Enlarger Lenses',
              callback: () {
                _navigateToPage(
                  name: "Photo Enlarger Lenses",
                  image: ["img_photo_enlager.jpg"],
                  description:
                      "A Photo Enlarger Lenses is a multi element lens system used to produce photographic prints from the film or glass negatives. Our Photo Magnifier Lenses are available in various Focal lengths such as 50mm, 75mm, 105mm etc. There optical elements are Antireflection coated. In addition to this, we are reckoned as one of the prime Enlarger Lenses Exporters Suppliers in India",
                );
              }),
          HomeProductGridItem(
              image: '${imagePath}img_double_concave.jpg',
              title: 'Double Concave Lenses',
              callback: () {
                _navigateToPage(
                  name: "Double Concave Lenses",
                  image: ["img_double_concave.jpg"],
                  description:
                      "We are listed at the most famed DCV Lenses Manufacturers in India. The Bi-concave glass lenses are manufactured with both surfaces concave. These lenses have negative focal lengths. Double Concave Lenses diverge the collimated incident light and form virtual images, which are seen through the lens. Double Concave Optical Lenses are often used to expand light or increase focal lengths in existing systems. They are used in laser beam expanders, optical character readers, viewers, and projection systems. Antireflection coatings can be ordered as an option.",
                );
              }),
        ],
      ),
    );
  }

  Widget _getHomeProductGridTablet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(280)),
      child: GridView(
        shrinkWrap: true,
        physics: PageScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 40, childAspectRatio: 0.8),
        children: [
          HomeProductGridItem(
              image: '${imagePath}img_magnifier.jpg',
              title: 'Glass Magnifier',
              callback: () {
                _navigateToPage(
                    name: 'Glass Magnifier',
                    image: ['img_magnifier.jpg'],
                    description:
                        'We are enlisted amidst the most preeminent Magnifier Lens Manufacturers and Suppliers in India. We offer two types of Glass Magnifier i.e. Spherical Lens Magnifier and Jewelry Triplet Magnifier. The spherical lens magnifier is perfect for reading the small print in books, newspapers or maps. A bright LED light illuminates the viewing area. An easy on/off switch is located on the handle. The high powered lens is distortion free, shatter proof and scratch resistant. Overall length of magnifier is 6 inch. Spherical lens magnifier requires 3 AAA batteries which are not included. Some of our best sellers are the 10x Jewelry Triplet Loupes. 10x Jewelry Triplet magnifier is the type of the loupe used by professional jewelers to grade diamonds and other gemstones. Anything in a gemstone that requires a loupe more powerful than 10x is usually not included on a grading report since it cannot be seen by the human eye without a loupe! Hastings Triplet loupe are designed with black framing around the triplet lens to eliminate reflections that alter the color of the object being viewed with the loupe');
              }),
          HomeProductGridItem(
              image: '${imagePath}img_optical_window.jpg',
              title: 'Optical Window',
              callback: () {
                _navigateToPage(
                    name: "Optical Windows",
                    image: ["img_optical_window.png"],
                    description:
                        "For the best quality Optical Windows, we are the best destination for you. Our Optical Glass Windows are used for protecting fragile optical components inside an assembly. AR coated BK7 glass window is the most common type. They have good performance over visible and near infrared wavelength region. We also offer fused silica windows and sapphire windows for wider spectral region and harsher environment. BK7 window is the lowest cost type of all three. Moreover, the company is recognized as one of the ace Polished Optical Windows Exporters and Suppliers in India.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_beam_splitter.jpg',
              title: 'Beam Splitters',
              callback: () {
                _navigateToPage(
                    name: "Beam Splitter",
                    image: ["img_beam_splitter.jpg"],
                    description:
                        "We have carved a niche as one of the most staggering Optical Beam Splitter Manufacturers and Suppliers in India. The Polarizing cube Beam Splitters split randomly polarized beams into two orthogonal, linearly polarized components: S-polarized light is reflected at a 90Â° angle while P-polarized light is transmitted. Each Polarizing Beam Splitters consists of a pair of precision high tolerance right angle prisms cemented together with a dielectric coating on the hypotenuse of one of the prisms. A multi-layer antireflective coating can be applied to each face of the Beam Splitter in order to produce maximum transmission efficiency.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_glass_mould.jpg',
              title: 'Glass Moulds',
              callback: () {
                _navigateToPage(
                    name: "Glass Moulds",
                    image: ["img_glass_mould.jpg"],
                    description:
                        "We are looked upon as one of the most overruling Pressed Glass Moulds Manufacturers and Optical Glass Moulds Suppliers in India. We have a complete spectrum of Optical Glasses manufactured by Schott, Ohara, Pilkington and many others. Glass Moulds include the full index range in ingot, block, and strip form. We store a tremendous inventory of raw optical materials to better service the needs of our customers. We take great pride in our inventory to insure accuracy and traceability. One of our strengths is being able to select the materials we carry to various quality levels of straie, bubbles, homogeneity, birefringence, and transmission. We can then machine these selected materials to the blank sizes you require.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_opto_components.jpg',
              title: 'Opto-Mechanical Component',
              callback: () {
                _navigateToPage(
                    name: "Opto-Mechanical Components",
                    image: ["img_opto_components.jpg"],
                    description:
                        "We manufacture various types of high precision assemblies and sub assemblies as per customers requirements. We maintain high tolerances for our Opto-Mechanical Components using our CNC machines. They are designed and manufactured as per the global standard and quality. You can send your specifications and samples and we will be happy to serve you accordingly. We offer our Opto-Mechanical Components at the most discounted rates as against the ordinary market. Additionally, we are one of the most preferred Micro-Opto-Mechanical Components Manufacturers and Suppliers in the country.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_meniscus_lens.jpg',
              title: 'Meniscus Lenses',
              callback: () {
                _navigateToPage(
                  name: "Meniscus Lenses",
                  image: ["img_meniscus_lens.png"],
                  description:
                      "Meniscus Lenses made available by us are accessible in both positive and negative focal length. The Positive Meniscus Lenses are a convex-concave lens with thicker center than the edge where as negative meniscus lenses are a convex-concave lens with thinner center as compared to the edge. They are highly polished and used in various scientific equipments. Besides, we are one of the eminent Meniscus Lenses Manufacturers as well as Suppliers in India.",
                );
              }),
          HomeProductGridItem(
              image: '${imagePath}img_photo_enlager.jpg',
              title: 'Photo Enlarger Lenses',
              callback: () {
                _navigateToPage(
                  name: "Photo Enlarger Lenses",
                  image: ["img_photo_enlager.jpg"],
                  description:
                      "A Photo Enlarger Lenses is a multi element lens system used to produce photographic prints from the film or glass negatives. Our Photo Magnifier Lenses are available in various Focal lengths such as 50mm, 75mm, 105mm etc. There optical elements are Antireflection coated. In addition to this, we are reckoned as one of the prime Enlarger Lenses Exporters Suppliers in India",
                );
              }),
          HomeProductGridItem(
              image: '${imagePath}img_double_concave.jpg',
              title: 'Double Concave Lenses',
              callback: () {
                _navigateToPage(
                  name: "Double Concave Lenses",
                  image: ["img_double_concave.jpg"],
                  description:
                      "We are listed at the most famed DCV Lenses Manufacturers in India. The Bi-concave glass lenses are manufactured with both surfaces concave. These lenses have negative focal lengths. Double Concave Lenses diverge the collimated incident light and form virtual images, which are seen through the lens. Double Concave Optical Lenses are often used to expand light or increase focal lengths in existing systems. They are used in laser beam expanders, optical character readers, viewers, and projection systems. Antireflection coatings can be ordered as an option.",
                );
              }),
        ],
      ),
    );
  }

  Widget _getHomeProductGridMobile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(280)),
      child: ListView(
        shrinkWrap: true,
        physics: PageScrollPhysics(),
        children: [
          HomeProductGridItem(
              image: '${imagePath}img_magnifier.jpg',
              title: 'Glass Magnifier',
              callback: () {
                final ReactiveModel<ProductStates> modelRM =
                    RM.get<ProductStates>();
                modelRM.setState((s) => s.setSelectedProduct(
                    'Glass Magnifier',
                    ['img_magnifier.jpg'],
                    'We are enlisted amidst the most preeminent Magnifier Lens Manufacturers and Suppliers in India. We offer two types of Glass Magnifier i.e. Spherical Lens Magnifier and Jewelry Triplet Magnifier. The spherical lens magnifier is perfect for reading the small print in books, newspapers or maps. A bright LED light illuminates the viewing area. An easy on/off switch is located on the handle. The high powered lens is distortion free, shatter proof and scratch resistant. Overall length of magnifier is 6 inch. Spherical lens magnifier requires 3 AAA batteries which are not included. Some of our best sellers are the 10x Jewelry Triplet Loupes. 10x Jewelry Triplet magnifier is the type of the loupe used by professional jewelers to grade diamonds and other gemstones. Anything in a gemstone that requires a loupe more powerful than 10x is usually not included on a grading report since it cannot be seen by the human eye without a loupe! Hastings Triplet loupe are designed with black framing around the triplet lens to eliminate reflections that alter the color of the object being viewed with the loupe'));
                modelRM.setState(
                    (s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
              }),
          HomeProductGridItem(
              image: '${imagePath}img_magnifier.jpg',
              title: 'Glass Magnifier',
              callback: () {
                _navigateToPage(
                    name: 'Glass Magnifier',
                    image: ['img_magnifier.jpg'],
                    description:
                        'We are enlisted amidst the most preeminent Magnifier Lens Manufacturers and Suppliers in India. We offer two types of Glass Magnifier i.e. Spherical Lens Magnifier and Jewelry Triplet Magnifier. The spherical lens magnifier is perfect for reading the small print in books, newspapers or maps. A bright LED light illuminates the viewing area. An easy on/off switch is located on the handle. The high powered lens is distortion free, shatter proof and scratch resistant. Overall length of magnifier is 6 inch. Spherical lens magnifier requires 3 AAA batteries which are not included. Some of our best sellers are the 10x Jewelry Triplet Loupes. 10x Jewelry Triplet magnifier is the type of the loupe used by professional jewelers to grade diamonds and other gemstones. Anything in a gemstone that requires a loupe more powerful than 10x is usually not included on a grading report since it cannot be seen by the human eye without a loupe! Hastings Triplet loupe are designed with black framing around the triplet lens to eliminate reflections that alter the color of the object being viewed with the loupe');
              }),
          HomeProductGridItem(
              image: '${imagePath}img_optical_window.jpg',
              title: 'Optical Window',
              callback: () {
                _navigateToPage(
                    name: "Optical Windows",
                    image: ["img_optical_window.png"],
                    description:
                        "For the best quality Optical Windows, we are the best destination for you. Our Optical Glass Windows are used for protecting fragile optical components inside an assembly. AR coated BK7 glass window is the most common type. They have good performance over visible and near infrared wavelength region. We also offer fused silica windows and sapphire windows for wider spectral region and harsher environment. BK7 window is the lowest cost type of all three. Moreover, the company is recognized as one of the ace Polished Optical Windows Exporters and Suppliers in India.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_beam_splitter.jpg',
              title: 'Beam Splitters',
              callback: () {
                _navigateToPage(
                    name: "Beam Splitter",
                    image: ["img_beam_splitter.jpg"],
                    description:
                        "We have carved a niche as one of the most staggering Optical Beam Splitter Manufacturers and Suppliers in India. The Polarizing cube Beam Splitters split randomly polarized beams into two orthogonal, linearly polarized components: S-polarized light is reflected at a 90Â° angle while P-polarized light is transmitted. Each Polarizing Beam Splitters consists of a pair of precision high tolerance right angle prisms cemented together with a dielectric coating on the hypotenuse of one of the prisms. A multi-layer antireflective coating can be applied to each face of the Beam Splitter in order to produce maximum transmission efficiency.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_glass_mould.jpg',
              title: 'Glass Moulds',
              callback: () {
                _navigateToPage(
                    name: "Glass Moulds",
                    image: ["img_glass_mould.jpg"],
                    description:
                        "We are looked upon as one of the most overruling Pressed Glass Moulds Manufacturers and Optical Glass Moulds Suppliers in India. We have a complete spectrum of Optical Glasses manufactured by Schott, Ohara, Pilkington and many others. Glass Moulds include the full index range in ingot, block, and strip form. We store a tremendous inventory of raw optical materials to better service the needs of our customers. We take great pride in our inventory to insure accuracy and traceability. One of our strengths is being able to select the materials we carry to various quality levels of straie, bubbles, homogeneity, birefringence, and transmission. We can then machine these selected materials to the blank sizes you require.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_opto_components.jpg',
              title: 'Opto-Mechanical Component',
              callback: () {
                _navigateToPage(
                    name: "Opto-Mechanical Components",
                    image: ["img_opto_components.jpg"],
                    description:
                        "We manufacture various types of high precision assemblies and sub assemblies as per customers requirements. We maintain high tolerances for our Opto-Mechanical Components using our CNC machines. They are designed and manufactured as per the global standard and quality. You can send your specifications and samples and we will be happy to serve you accordingly. We offer our Opto-Mechanical Components at the most discounted rates as against the ordinary market. Additionally, we are one of the most preferred Micro-Opto-Mechanical Components Manufacturers and Suppliers in the country.");
              }),
          HomeProductGridItem(
              image: '${imagePath}img_meniscus_lens.jpg',
              title: 'Meniscus Lenses',
              callback: () {
                _navigateToPage(
                  name: "Meniscus Lenses",
                  image: ["img_meniscus_lens.png"],
                  description:
                      "Meniscus Lenses made available by us are accessible in both positive and negative focal length. The Positive Meniscus Lenses are a convex-concave lens with thicker center than the edge where as negative meniscus lenses are a convex-concave lens with thinner center as compared to the edge. They are highly polished and used in various scientific equipments. Besides, we are one of the eminent Meniscus Lenses Manufacturers as well as Suppliers in India.",
                );
              }),
          HomeProductGridItem(
              image: '${imagePath}img_photo_enlager.jpg',
              title: 'Photo Enlarger Lenses',
              callback: () {
                _navigateToPage(
                  name: "Photo Enlarger Lenses",
                  image: ["img_photo_enlager.jpg"],
                  description:
                      "A Photo Enlarger Lenses is a multi element lens system used to produce photographic prints from the film or glass negatives. Our Photo Magnifier Lenses are available in various Focal lengths such as 50mm, 75mm, 105mm etc. There optical elements are Antireflection coated. In addition to this, we are reckoned as one of the prime Enlarger Lenses Exporters Suppliers in India",
                );
              }),
          HomeProductGridItem(
              image: '${imagePath}img_double_concave.jpg',
              title: 'Double Concave Lenses',
              callback: () {
                _navigateToPage(
                  name: "Double Concave Lenses",
                  image: ["img_double_concave.jpg"],
                  description:
                      "We are listed at the most famed DCV Lenses Manufacturers in India. The Bi-concave glass lenses are manufactured with both surfaces concave. These lenses have negative focal lengths. Double Concave Lenses diverge the collimated incident light and form virtual images, which are seen through the lens. Double Concave Optical Lenses are often used to expand light or increase focal lengths in existing systems. They are used in laser beam expanders, optical character readers, viewers, and projection systems. Antireflection coatings can be ordered as an option.",
                );
              }),
        ],
      ),
    );
  }

  void _navigateToPage({String name, List<String> image, String description}) {
    final ReactiveModel<ProductStates> modelRM = RM.get<ProductStates>();
    modelRM.setState((s) => s.setSelectedProduct(name, image, description));

    modelRM.setState((s) => s.setSelectedBody(ProductsPage(), 'PRODUCTS'));
  }
}
