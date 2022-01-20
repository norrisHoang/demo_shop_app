class ProductModel{
  String image_banner;
  String image_item_list;
  String image_item_cart;
  String image_product_detail;
  String name;
  String title;
  double price;
  int material;
  double vote;
  int review;
  String detail;
  String type;
  String size;
  String color;
  int quantity;

  ProductModel({required this.image_banner,
    required this.image_item_list,
    required this.image_item_cart,
    required this.image_product_detail,
    required this.name,
    required this.title,
    required this.price,
    required this.material,
    required this.vote,
    required this.review,
    required this.detail,
    required this.type,
    required this.size,
    required this.color,
    required this.quantity});

}

class MyList{
  late List<ProductModel> myListProduct;
  void setListProductModel(){
    myListProduct =[
      ProductModel(
        image_banner: 'images/one_tabview.png',
        image_item_list: 'images/lv_item1.png',
        image_item_cart: 'images/image_cart_jacket.png',
        image_product_detail: 'images/image_product_wrangler.png',
        name: 'Twerk it',
        title: 'Long 3/4 sleeve. sweartshirt',
        price: 200,
        material: 76,
        vote: 4.2,
        review: 12,
        detail: '"1 Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top."',
        type: 'Wrangler',
        size: 'S',
        color: 'ECB900',
        quantity: 2,
      ),
      ProductModel(
        image_banner: 'images/two_tabview.png',
        image_item_list: 'images/lv_item2.png',
        image_item_cart: 'images/image_cart_tshirt.png',
        image_product_detail: 'images/image_product_jacket.jpg',
        name: 'Jacket in blue denim',
        title: 'Wrangler Vintage-style womens’s',
        price: 300,
        material: 56,
        vote: 2.2,
        review: 122,
        detail: '"2 Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top."',
        type: 'Jacket',
        size: 'XXL',
        color: 'EE711D',
        quantity: 12,
      ),
      ProductModel(
        image_banner: 'images/three_tabview.png',
        image_item_list: 'images/lv_item3.png',
        image_item_cart: 'images/image_cart_wrangler.jpg',
        image_product_detail: 'images/image_product_tshirt.jpg',
        name: 'T-shirt Mark Lebon Julie',
        title: 'Get back to basics in this pared-down denim jacket',
        price: 500,
        material: 74,
        vote: 6.2,
        review: 112,
        detail: '"3 Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top."',
        type: 'T-shirt',
        size: 'M',
        color: '2FAEF8',
        quantity: 52,
      ),
      ProductModel(
        image_banner: 'images/one_tabview.png',
        image_item_list: 'images/lv_item1.png',
        image_item_cart: 'images/image_cart_jacket.png',
        image_product_detail: 'images/image_product_wrangler.png',
        name: 'Twerk it',
        title: 'Long 3/4 sleeve. sweartshirt',
        price: 200,
        material: 76,
        vote: 4.2,
        review: 12,
        detail: '"4 Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top."',
        type: 'Wrangler',
        size: 'S',
        color: 'ECB900',
        quantity: 2,
      ),
      ProductModel(
        image_banner: 'images/two_tabview.png',
        image_item_list: 'images/lv_item2.png',
        image_item_cart: 'images/image_cart_tshirt.png',
        image_product_detail: 'images/image_product_jacket.jpg',
        name: 'Jacket in blue denim',
        title: 'Wrangler Vintage-style womens’s',
        price: 300,
        material: 56,
        vote: 2.2,
        review: 122,
        detail: '"5 Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top."',
        type: 'Jacket',
        size: 'XXL',
        color: 'EE711D',
        quantity: 12,
      ),
      ProductModel(
        image_banner: 'images/three_tabview.png',
        image_item_list: 'images/lv_item3.png',
        image_item_cart: 'images/image_cart_wrangler.jpg',
        image_product_detail: 'images/image_product_tshirt.jpg',
        name: 'T-shirt Mark Lebon Julie',
        title: 'Get back to basics in this pared-down denim jacket',
        price: 500,
        material: 74,
        vote: 6.2,
        review: 112,
        detail: '"6 Get back to basics in this pared-down denim jacket with mild distressing on the seams and a mix fabric collar that adds extra character to this already fetching top."',
        type: 'T-shirt',
        size: 'M',
        color: '2FAEF8',
        quantity: 52,
      ),
    ];
  }
}