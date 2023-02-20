import 'package:i_can_read/models/menu.dart';

class MenuRepository {
  final List<Menu> dummyMenu = [
    Menu(
      name: '아메리카노',
      description: '에스프레소를 뜨거운 물로 농도를 희석하여 마시는 커피 음료의 한 종류',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Hokitika_Cheese_and_Deli%2C_Hokitika_%283526706594%29.jpg/800px-Hokitika_Cheese_and_Deli%2C_Hokitika_%283526706594%29.jpg'
    ),
    Menu(
      name: '에스프레소',
      description: '고압·고온 하의 물을 미세하게 분쇄한 커피 가루에 가해 추출해내는 고농축 커피의 일종',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Linea_doubleespresso.jpg/330px-Linea_doubleespresso.jpg'
    ),
    Menu(
      name: '아인슈페너',
      description: '크림을 올린 커피',
      image: 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Einspaenner.jpg'
    ),
    Menu(
      name: '아포가토',
      description: '음료나 후식에 에스프레소를 끼얹는 것',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Affogato.JPG/330px-Affogato.JPG'
    ),
    Menu(
      name: '카페 라떼',
      description: '에스프레소에 뜨거운 우유를 곁들인 커피 가운데 하나',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Koffie_verkeerd_cafe_MP_Amsterdam.jpg/330px-Koffie_verkeerd_cafe_MP_Amsterdam.jpg'
    ),
    Menu(
      name: '카페 모카',
      description: '에스프레소, 우유에 초콜릿 시럽을 넣은 커피 음료',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Caff%C3%A8_Mocha_by_Phil.jpg/330px-Caff%C3%A8_Mocha_by_Phil.jpg'
    ),
    Menu(
      name: '아메리카노',
      description: '에스프레소를 뜨거운 물로 농도를 희석하여 마시는 커피 음료의 한 종류',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Hokitika_Cheese_and_Deli%2C_Hokitika_%283526706594%29.jpg/800px-Hokitika_Cheese_and_Deli%2C_Hokitika_%283526706594%29.jpg'
    ),
    Menu(
      name: '에스프레소',
      description: '고압·고온 하의 물을 미세하게 분쇄한 커피 가루에 가해 추출해내는 고농축 커피의 일종',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Linea_doubleespresso.jpg/330px-Linea_doubleespresso.jpg'
    ),
    Menu(
      name: '아인슈페너',
      description: '크림을 올린 커피',
      image: 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Einspaenner.jpg'
    ),
    Menu(
      name: '아포가토',
      description: '음료나 후식에 에스프레소를 끼얹는 것',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Affogato.JPG/330px-Affogato.JPG'
    ),
    Menu(
      name: '카페 라떼',
      description: '에스프레소에 뜨거운 우유를 곁들인 커피 가운데 하나',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Koffie_verkeerd_cafe_MP_Amsterdam.jpg/330px-Koffie_verkeerd_cafe_MP_Amsterdam.jpg'
    ),
    Menu(
      name: '카페 모카',
      description: '에스프레소, 우유에 초콜릿 시럽을 넣은 커피 음료',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Caff%C3%A8_Mocha_by_Phil.jpg/330px-Caff%C3%A8_Mocha_by_Phil.jpg'
    ),
  ];

  List<Menu> getMenu() {
    return dummyMenu;
  }
}