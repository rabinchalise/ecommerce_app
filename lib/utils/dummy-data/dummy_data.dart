import 'package:shop/features/shop/models/category_model.dart';
import 'package:shop/features/shop/models/product_model.dart';
import 'package:shop/features/shop/models/product_variations_model.dart';
import 'package:shop/utils/constants/image_string.dart';
import '../../features/shop/models/banner_model.dart';
import '../../features/shop/models/brand_model.dart';
import '../../features/shop/models/product_attributes_model.dart';
import '../constants/routes.dart';

class DummyData {
// Banners
  static final List<BannerModel> banners = [
    BannerModel(
        imageUrl: TImage.banner1, targetScreen: Routes.order, active: false),
    BannerModel(
        imageUrl: TImage.banner2, targetScreen: Routes.cart, active: true),
    BannerModel(
        imageUrl: TImage.banner3,
        targetScreen: Routes.favourites,
        active: true),
    BannerModel(
        imageUrl: TImage.banner4, targetScreen: Routes.search, active: true),
    BannerModel(
        imageUrl: TImage.banner5, targetScreen: Routes.settings, active: true),
    BannerModel(
        imageUrl: TImage.banner6,
        targetScreen: Routes.userAddress,
        active: true),
    BannerModel(
        imageUrl: TImage.banner8, targetScreen: Routes.checkout, active: true),
  ];

// user
  // cart

  // order

  static final List<CategoryModel> categories = [
    CategoryModel(
        id: '1', name: 'Sports', image: TImage.sportIcon, isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Furniture',
        image: TImage.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '3',
        name: 'Electronics',
        image: TImage.electronicsIcon,
        isFeatured: true),
    CategoryModel(
        id: '4', name: 'Clothes', image: TImage.clothIcon, isFeatured: true),
    CategoryModel(
        id: '5', name: 'Animals', image: TImage.animalIcon, isFeatured: true),
    CategoryModel(
        id: '6', name: 'Shoes', image: TImage.shoeIcon, isFeatured: true),
    CategoryModel(
        id: '7',
        name: 'Cosmetics',
        image: TImage.cosmeticsIcon,
        isFeatured: true),
    CategoryModel(
        id: '14',
        name: 'Jewelery',
        image: TImage.jeweleryIcon,
        isFeatured: true),

    //subcatefories
    CategoryModel(
        id: '8',
        name: 'Sport Shoes',
        image: TImage.sportIcon,
        isFeatured: false,
        parentId: '1'),
    CategoryModel(
        id: '9',
        name: 'Track Suits',
        image: TImage.sportIcon,
        isFeatured: false,
        parentId: '1'),
    CategoryModel(
        id: '10',
        name: 'Sports Equipments',
        image: TImage.sportIcon,
        isFeatured: false,
        parentId: '1'),

    // furnitures
    CategoryModel(
        id: '11',
        name: 'Bedroom Furniture',
        image: TImage.furnitureIcon,
        isFeatured: false,
        parentId: '5'),
    CategoryModel(
        id: '12',
        name: 'Kitchen Furnitures',
        image: TImage.furnitureIcon,
        isFeatured: false,
        parentId: '5'),
    CategoryModel(
        id: '13',
        name: 'Office Furnitures',
        image: TImage.furnitureIcon,
        isFeatured: false,
        parentId: '5'),

    // electronics
    CategoryModel(
        id: '15',
        name: 'Laptop',
        image: TImage.electronicsIcon,
        isFeatured: false,
        parentId: '2'),
    CategoryModel(
        id: '16',
        name: 'Mobile',
        image: TImage.electronicsIcon,
        isFeatured: false,
        parentId: '2'),

    //clothes
    CategoryModel(
        id: '17',
        name: 'Shirts',
        image: TImage.clothIcon,
        isFeatured: false,
        parentId: '3'),
  ];

  // list of brands
  static final List<BrandModel> brands = [
    BrandModel(
        id: '1',
        image: TImage.nikeLogo,
        name: 'Nike',
        productsCount: 265,
        isFeatured: true),
    BrandModel(
        id: '2',
        image: TImage.adidasLogo,
        name: 'Adidas',
        productsCount: 95,
        isFeatured: true),
    BrandModel(
        id: '8',
        image: TImage.kenwoodLogo,
        name: 'Kenwood',
        productsCount: 36,
        isFeatured: true),
    BrandModel(
        id: '9',
        image: TImage.ikeaLogo,
        name: 'IKEA',
        productsCount: 36,
        isFeatured: true),
    BrandModel(
        id: '5',
        image: TImage.appleLogo,
        name: 'Apple',
        productsCount: 16,
        isFeatured: true),
    BrandModel(
        id: '10',
        image: TImage.acerlogo,
        name: 'Acer',
        productsCount: 36,
        isFeatured: true),
    BrandModel(
        id: '3',
        image: TImage.jordanLogo,
        name: 'Jordan',
        productsCount: 36,
        isFeatured: true),
    BrandModel(
        id: '4',
        image: TImage.pumaLogo,
        name: 'Puma',
        productsCount: 65,
        isFeatured: true),
    BrandModel(
        id: '6',
        image: TImage.zaraLogo,
        name: 'Zara',
        productsCount: 36,
        isFeatured: true),
    BrandModel(
        id: '7',
        image: TImage.electronicsIcon,
        name: 'Samsung',
        productsCount: 36,
        isFeatured: true),
  ];

  /** -- list of all brand categories
   * static final List<BrandCategoryModel> brandCategory =[
   * BrandCategoryModel(brandId: '1', categoryId: '1'),
   * BrandCategoryModel(brandId: '1', categoryId: '8'),
   * BrandCategoryModel(brandId: '1', categoryId: '9'),
   * BrandCategoryModel(brandId: '1', categoryId: '10'),
   * BrandCategoryModel(brandId: '2', categoryId: '1'),
   * BrandCategoryModel(brandId: '2', categoryId: '8'),
   * BrandCategoryModel(brandId: '2', categoryId: '9'),
   * BrandCategoryModel(brandId: '2', categoryId: '10'),
   * BrandCategoryModel(brandId: '3', categoryId: '1'),
   * BrandCategoryModel(brandId: '3', categoryId: '8'),
   * BrandCategoryModel(brandId: '3', categoryId: '9'),
   * BrandCategoryModel(brandId: '3', categoryId: '10'),
   * BrandCategoryModel(brandId: '4', categoryId: '1'),
   * BrandCategoryModel(brandId: '4', categoryId: '8'),
   * BrandCategoryModel(brandId: '4', categoryId: '9'),
   * BrandCategoryModel(brandId: '4', categoryId: '10'),
   * BrandCategoryModel(brandId: '5', categoryId: '15'),
   * BrandCategoryModel(brandId: '5', categoryId: '2'),
   * BrandCategoryModel(brandId: '10', categoryId: '2'),
   * BrandCategoryModel(brandId: '10', categoryId: '14'),
   * BrandCategoryModel(brandId: '6', categoryId: '3'),
   * BrandCategoryModel(brandId: '6', categoryId: '16'),
   * BrandCategoryModel(brandId: '7', categoryId: '2'),
   * BrandCategoryModel(brandId: '8', categoryId: '5'),
   * BrandCategoryModel(brandId: '8', categoryId: '11'),
   * BrandCategoryModel(brandId: '8', categoryId: '12'),
   * BrandCategoryModel(brandId: '8', categoryId: '13'),
   * BrandCategoryModel(brandId: '9', categoryId: '5'),
   * BrandCategoryModel(brandId: '9', categoryId: '11'),
   * BrandCategoryModel(brandId: '9', categoryId: '12'),
   * BrandCategoryModel(brandId: '9', categoryId: '13'),
   * ]; 
   * 
   */

  /**  list of all products categories
   * static final List<ProductCategoryModel> productCategories =[
   * ProductCategoryModel(productId:'001', categoryId: '1'),
   * ProductCategoryModel(productId:'001', categoryId: '8'),
   * ProductCategoryModel(productId:'004', categoryId: '3'),
   * ProductCategoryModel(productId:'002', categoryId: '3'),
   * ProductCategoryModel(productId:'002', categoryId: '16'),
   * ProductCategoryModel(productId:'003', categoryId: '3'),
   * ProductCategoryModel(productId:'005', categoryId: '1'),
   * ProductCategoryModel(productId:'005', categoryId: '8'),
   * ProductCategoryModel(productId:'040', categoryId: '2'),
   * ProductCategoryModel(productId:'040', categoryId: '15'),
   * ProductCategoryModel(productId:'006', categoryId: '2'),
   * ProductCategoryModel(productId:'007', categoryId: '4'),
   * ProductCategoryModel(productId:'009', categoryId: '1'),
   * ProductCategoryModel(productId:'009', categoryId: '8'),
   * ProductCategoryModel(productId:'010', categoryId: '1'),
   * ProductCategoryModel(productId:'010', categoryId: '8'),
   * ProductCategoryModel(productId:'011', categoryId: '1'),
   * ProductCategoryModel(productId:'011', categoryId: '8'),
   * ProductCategoryModel(productId:'012', categoryId: '1'),
   * ProductCategoryModel(productId:'012', categoryId: '8'),
   * ProductCategoryModel(productId:'013', categoryId: '1'),
   * ProductCategoryModel(productId:'013', categoryId: '8'),
   * 
   * ProductCategoryModel(productId:'014', categoryId: '1'),
   * ProductCategoryModel(productId:'014', categoryId: '9'),
   * ProductCategoryModel(productId:'015', categoryId: '1'),
   * ProductCategoryModel(productId:'015', categoryId: '9'),
   * ProductCategoryModel(productId:'016', categoryId: '1'),
   * ProductCategoryModel(productId:'016', categoryId: '9'),
   * ProductCategoryModel(productId:'017', categoryId: '1'),
   * ProductCategoryModel(productId:'017', categoryId: '9'),
   * 
   * ProductCategoryModel(productId:'018', categoryId: '1'),
   * ProductCategoryModel(productId:'018', categoryId: '10'),
   * ProductCategoryModel(productId:'019', categoryId: '1'),
   * ProductCategoryModel(productId:'019', categoryId: '10'),
   * ProductCategoryModel(productId:'020', categoryId: '1'),
   * ProductCategoryModel(productId:'020', categoryId: '10'),
   * ProductCategoryModel(productId:'021', categoryId: '1'),
   * ProductCategoryModel(productId:'021', categoryId: '10'),
   * 
   * ProductCategoryModel(productId:'022', categoryId: '5'),
   * ProductCategoryModel(productId:'022', categoryId: '11'),
   * ProductCategoryModel(productId:'023', categoryId: '5'),
   * ProductCategoryModel(productId:'023', categoryId: '11'),
   * ProductCategoryModel(productId:'024', categoryId: '5'),
   * ProductCategoryModel(productId:'024', categoryId: '11'),
   * ProductCategoryModel(productId:'025', categoryId: '5'),
   * ProductCategoryModel(productId:'025', categoryId: '11'),
   * 
   * ProductCategoryModel(productId:'026', categoryId: '5'),
   * ProductCategoryModel(productId:'026', categoryId: '12'),
   * ProductCategoryModel(productId:'027', categoryId: '5'),
   * ProductCategoryModel(productId:'027', categoryId: '12'),
   * ProductCategoryModel(productId:'028', categoryId: '5'),
   * ProductCategoryModel(productId:'028', categoryId: '12'),
   * 
   * ProductCategoryModel(productId:'029', categoryId: '5'),
   * ProductCategoryModel(productId:'029', categoryId: '13'),
   * ProductCategoryModel(productId:'030', categoryId: '5'),
   * ProductCategoryModel(productId:'030', categoryId: '13'),
   * ProductCategoryModel(productId:'031', categoryId: '5'),
   * ProductCategoryModel(productId:'031', categoryId: '13'),
   * ProductCategoryModel(productId:'032', categoryId: '5'),
   * ProductCategoryModel(productId:'032', categoryId: '13'),
   *
   * 
   * ProductCategoryModel(productId:'033', categoryId: '2'),
   * ProductCategoryModel(productId:'033', categoryId: '14'),
   * ProductCategoryModel(productId:'034', categoryId: '2'),
   * ProductCategoryModel(productId:'034', categoryId: '14'),
   * ProductCategoryModel(productId:'035', categoryId: '2'),
   * ProductCategoryModel(productId:'035', categoryId: '14'),
   * ProductCategoryModel(productId:'036', categoryId: '2'),
   * ProductCategoryModel(productId:'036', categoryId: '14'),
   
   * 
   * ProductCategoryModel(productId:'037', categoryId: '2'),
   * ProductCategoryModel(productId:'037', categoryId: '15')
   * ProductCategoryModel(productId:'038', categoryId: '2'),
   * ProductCategoryModel(productId:'038', categoryId: '15'),
   * ProductCategoryModel(productId:'039', categoryId: '2'),
   * ProductCategoryModel(productId:'039', categoryId: '15'),
   * 
   *  ProductCategoryModel(productId:'008', categoryId: '2')
   * ]
  */
  ///

  // list of all products
  static final List<ProductsModel> products = [
    ProductsModel(
        id: '001',
        title: 'Green Nike Sports shoe',
        stock: 15,
        price: 135,
        isFeatured: true,
        description: 'Green Nike Sports shoe',
        thumbnail: TImage.productImage1,
        brand: BrandModel(
            id: '1',
            image: TImage.nikeLogo,
            name: 'Nike',
            productsCount: 265,
            isFeatured: true),
        images: [
          TImage.productImage1,
          TImage.productImage23,
          TImage.productImage21,
          TImage.productImage9
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '1',
        productAttributes: [
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Black', 'Red'])
        ],
        productVariations: [
          ProductVariationsModel(
              id: '1',
              stock: 34,
              price: 134,
              salePrice: 122.6,
              image: TImage.productImage1,
              description:
                  'This is the  product description for Green Nike sports shoe.',
              attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '2',
              stock: 15,
              price: 132,
              image: TImage.productImage23,
              attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
          ProductVariationsModel(
              id: '3',
              stock: 0,
              price: 234,
              image: TImage.productImage23,
              attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '4',
              stock: 222,
              price: 232,
              image: TImage.productImage1,
              attributeValues: {'Color': 'Green', 'Size': 'EU 32'}),
          ProductVariationsModel(
              id: '5',
              stock: 0,
              price: 334,
              image: TImage.productImage21,
              attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '6',
              stock: 11,
              price: 332,
              image: TImage.productImage21,
              attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
        ],
        productType: 'ProductType.variable'),

    ProductsModel(
        id: '002',
        title: 'Blue T-shirt for all ages',
        stock: 15,
        price: 35,
        isFeatured: true,
        description:
            'This is a product description for blue nike sleeve less vest.This is a very good product suitable for all ages.',
        thumbnail: TImage.productImage69,
        brand: BrandModel(id: '6', image: TImage.zaraLogo, name: 'ZARA'),
        images: [
          TImage.productImage68,
          TImage.productImage69,
          TImage.productImage5
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '16',
        productAttributes: [
          ProductAttributesModel(name: 'Size', values: [
            'EU34',
            'EU32',
          ]),
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Black', 'Red'])
        ],
        productType: 'ProductType.single'),

    ProductsModel(
        id: '003',
        title: 'Leather Brown Jacket',
        stock: 15,
        price: 38000,
        isFeatured: false,
        description:
            'This is a product description for Leather Brown Jacket.This is a very good product suitable for all ages.',
        thumbnail: TImage.productImage64,
        brand: BrandModel(id: '6', image: TImage.zaraLogo, name: 'ZARA'),
        images: [
          TImage.productImage64,
          TImage.productImage65,
          TImage.productImage66,
          TImage.productImage77
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '16',
        productAttributes: [
          ProductAttributesModel(name: 'Size', values: [
            'EU34',
            'EU32',
          ]),
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Black', 'Red'])
        ],
        productType: 'ProductType.single'),

    ProductsModel(
        id: '004',
        title: '4 Color collar t-shirt dry fit',
        stock: 15,
        price: 135,
        isFeatured: false,
        description:
            'This is a product description for color collar t-shirt dry fit.This is a very good product suitable for all ages.',
        thumbnail: TImage.productImage60,
        brand: BrandModel(id: '6', image: TImage.zaraLogo, name: 'ZARA'),
        images: [
          TImage.productImage60,
          TImage.productImage61,
          TImage.productImage62,
          TImage.productImage63
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '1',
        productAttributes: [
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Blue', 'Red', 'Yellow']),
          ProductAttributesModel(name: 'Size', values: [
            'EU 30',
            'EU 32',
            'EU 34',
          ])
        ],
        productVariations: [
          ProductVariationsModel(
              id: '1',
              stock: 34,
              price: 134,
              salePrice: 122.6,
              image: TImage.productImage60,
              description:
                  'This is the  product description for 4 Color collor t-shirt dry fit.',
              attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '2',
              stock: 15,
              price: 132,
              image: TImage.productImage60,
              attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
          ProductVariationsModel(
              id: '3',
              stock: 0,
              price: 234,
              image: TImage.productImage61,
              attributeValues: {'Color': 'Yellow', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '4',
              stock: 222,
              price: 232,
              image: TImage.productImage61,
              attributeValues: {'Color': 'Yellow', 'Size': 'EU 32'}),
          ProductVariationsModel(
              id: '5',
              stock: 0,
              price: 334,
              image: TImage.productImage62,
              attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '6',
              stock: 11,
              price: 332,
              image: TImage.productImage62,
              attributeValues: {'Color': 'Green', 'Size': 'EU 30'}),
          ProductVariationsModel(
              id: '7',
              stock: 0,
              price: 334,
              image: TImage.productImage63,
              attributeValues: {'Color': 'Blue', 'Size': 'EU 30'}),
          ProductVariationsModel(
              id: '8',
              stock: 11,
              price: 332,
              image: TImage.productImage62,
              attributeValues: {'Color': 'Blue', 'Size': 'EU 34'}),
        ],
        productType: 'ProductType.variable'),

    // production after banner
    ProductsModel(
        id: '005',
        title: 'Nike Air Jordan Shoes',
        stock: 15,
        price: 135,
        isFeatured: false,
        description:
            'This is a product description for  Nike Air Jordan Shoe.This is a very good product suitable for all ages.',
        thumbnail: TImage.productImage10,
        brand: BrandModel(
            id: '1',
            image: TImage.nikeLogo,
            name: 'Nike',
            productsCount: 265,
            isFeatured: true),
        images: [
          TImage.productImage7,
          TImage.productImage8,
          TImage.productImage9,
          TImage.productImage10
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '8',
        productAttributes: [
          ProductAttributesModel(name: 'Color', values: [
            'Orange',
            'Black',
            'Brown',
          ]),
          ProductAttributesModel(name: 'Size', values: [
            'EU 30',
            'EU 32',
            'EU 34',
          ])
        ],
        productVariations: [
          ProductVariationsModel(
              id: '1',
              stock: 16,
              price: 36,
              salePrice: 12.6,
              image: TImage.productImage8,
              description:
                  'Flutter is Google\'s mobile UI open source framework to build high-quality native (super fast) interfaces for ioS and Android apps with the unified codebase.',
              attributeValues: {
                'Color': 'Onange',
                'Size': 'EU 34'
              }), // ProductVariationModel
          ProductVariationsModel(
              id: '2',
              stock: 15,
              price: 35,
              image: TImage.productImage7,
              attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
          ProductVariationsModel(
              id: '3',
              stock: 14,
              price: 34,
              image: TImage.productImage9,
              attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '4',
              stock: 13,
              price: 33,
              image: TImage.productImage7,
              attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
          ProductVariationsModel(
              id: '5',
              stock: 12,
              price: 32,
              image: TImage.productImage9,
              attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}),
          ProductVariationsModel(
              id: '6',
              stock: 11,
              price: 31,
              image: TImage.productImage8,
              attributeValues: {'Color': '0range', 'Size': 'EU 32'}),
        ],
        productType: 'ProductType.variable'),

    ProductsModel(
        id: '006',
        title: 'SAMSUNG Galaxy S9 (Pink, 64 GB) (4 GB RAM)',
        stock: 15,
        price: 750,
        isFeatured: false,
        thumbnail: TImage.productImage11,
        description:
            'SAMSUNG Galaxy S9 (Pink, 64 GB) (4 GB RAM), Long Battery timing',
        brand: BrandModel(id: '7', image: TImage.appleLogo, name: 'Samsung'),
        images: [
          TImage.productImage11,
          TImage.productImage12,
          TImage.productImage13,
          TImage.productImage12
        ],
        salePrice: 650,
        sku: 'ABR4568',
        categoryId: '2',
        productAttributes: [
          ProductAttributesModel(name: 'Size', values: ['EU34', 'EU32']),
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Red', 'Blue']),
        ],
        productType: 'ProductType.single'),

    ProductsModel(
        id: '007',
        title: 'TOMI Dog food',
        stock: 15,
        price: 20,
        isFeatured: false,
        thumbnail: TImage.productImage18,
        description:
            'This is a Product description for TOMI Dog food. There are more things that can be added but i am just practicing and nothing else.',
        brand: BrandModel(id: '7', image: TImage.appleLogo, name: 'Tomi'),
        salePrice: 10,
        sku: 'ABR4568',
        categoryId: '4',
        productAttributes: [
          ProductAttributesModel(name: 'Size', values: ['EU34', 'EU32']),
          ProductAttributesModel(name: 'Color', values: ['Green', 'Red'])
        ],
        productType: 'ProductType. single'),
    ProductsModel(
        id: '009',
        title: 'Nike Air Jordan 19 Blue',
        stock: 15,
        price: 400,
        isFeatured: false,
        thumbnail: TImage.productImage19,
        description:
            'This is a Product description for Nike Air Jordan. There are more things that can be added but i am just practicing and nothing else.',
        brand: BrandModel(id: '1', image: TImage.nikeLogo, name: 'Nike'),
        images: [
          TImage.productImage19,
          TImage.productImage20,
          TImage.productImage21,
          TImage.productImage22
        ],
        salePrice: 200,
        sku: 'ABR4568',
        categoryId: '8',
        productAttributes: [
          ProductAttributesModel(name: 'Size', values: ['EU34', 'EU32']),
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Red', 'Blue'])
        ],
        productType: 'ProductType. single'),

    ProductsModel(
        id: '015',
        title: 'Nike Air Jordan 6 Orange',
        stock: 15,
        price: 400,
        isFeatured: false,
        thumbnail: TImage.productImage20,
        description:
            'This is a Product description for Nike Air Jordan. There are more things that can be added but i am just practicing and nothing else.',
        brand: BrandModel(id: '1', image: TImage.nikeLogo, name: 'Nike'),
        images: [
          TImage.productImage19,
          TImage.productImage20,
          TImage.productImage21,
          TImage.productImage22
        ],
        salePrice: 200,
        sku: 'ABR4568',
        categoryId: '8',
        productAttributes: [
          ProductAttributesModel(name: 'Size', values: ['EU34', 'EU32']),
          ProductAttributesModel(
              name: 'Color', values: ['Green', 'Red', 'Blue'])
        ],
        productType: 'ProductType. single'),
  ];
}
