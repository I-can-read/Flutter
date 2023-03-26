import 'package:i_can_read/models/menu.dart';

class RecommendMenu {
  final List<Menu> recommendMenu = [
    Menu(
      name: '따뜻한 바닐라라떼',
      description: '우유에 커피와 바닐라 시럽을 넣어 달콤한 음료입니다.\n시중에 판매하는 커피 믹스와 비슷한 맛입니다.',
      image: 'https://post-phinf.pstatic.net/MjAxODAyMDhfMTQ0/MDAxNTE4MDU1NDU1OTE1._ovacpJ6exOfJCMunIy5ZtAN87vwdkTkjJ9lQ7DAxaEg.oR43dJo7Gxdvlm1EjRAVwzch-MDurQb4eI3n1zRNJcsg.PNG/2018-02-08_11%3B01%3B45_-_%EB%B3%B5%EC%82%AC%EB%B3%B8.PNG?type=w1200'
    ),
    Menu(
      name: '카푸치노',
      description: '우유에 커피를 넣은 음료입니다. 라떼와 비교했을 때 우유 거품의 비율이 높아 부드러운 것이 특징입니다. 계피가루를 뿌려서 드셔보세요.',
      image: 'http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRqPnxhzG50sOFqBgyKvZtmOHiB3mwkR2YtId5jZG5nApAoiSDkXMK4Rxxqpkfg0ZW9'),
    Menu(
      name: '아인슈페너',
      description: '시원한 아메리카노 위에 달콤한 크림을 올린 음료입니다.',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Einspaenner.jpg/220px-Einspaenner.jpg'),
    Menu(
      name: '따뜻한 아메리카노',
      description: '따뜻한 물에 커피 추출액을 부어서 제공하는 기본 커피입니다.\n단 맛이 없고 쓰고 고소한 맛입니다.',
      image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[94]_20210430103337006.jpg'),
    Menu(
      name: '아이스 바닐라라떼',
      description: '우유에 커피와 바닐라 시럽을 넣은 음료입니다.\n시중에 판매하는 커피 믹스와 비슷한 맛입니다.',
      image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110569]_20210415143036138.jpg'),
    Menu(
      name: '아이스 카페라떼',
      description: '우유에 커피를 넣은 음료로 단맛이 나지 않습니다. ',
        image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110569]_20210415143036138.jpg'),
    Menu(
      name: '아이스 두유라떼(소이라떼)',
      description: '카페라떼에서 우유 대신에 두유가 들어간 음료입니다.',
      image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[9200000003285]_20210416154437226.jpg'),
    Menu(
      name: '아이스 아메리카노',
      description: '얼음을 넣은 시원한 커피입니다. 단 맛이 없고 쓰고 고소한 맛이 나는것이 특징입니다.',
      image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110563]_20210426095937947.jpg'),
    Menu(
        name: '따뜻한 고구마라떼',
      description: '우유와 고구마를 갈아마시는 듯한 맛',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_hWv9ws86KWP40AdBXyUJTFLby98frbVX0nHBKGYWs1dVtDdmdR-0zrRvT8H-tDFVnNw&usqp=CAU'
    ),
    Menu(
      name: '따뜻한 우유',
      description: '우유를 데워서 제공합니다.',
      image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[17]_20210426095334934.jpg'),
    Menu(
      name: '따뜻한 유자차',
      description: '유자차는 비타민 A와 C, 무기질 및 구연산이 풍부하여 피로해소, 감기예방, 피부 미백에 좋습니다.',
      image: 'https://mblogthumb-phinf.pstatic.net/MjAyMDA5MTBfODQg/MDAxNTk5NzM5NDgxMDE0.1VWyOD8bhMgQBA3z0RkIWXcuGF9t5FcB9f2kGIVyLeEg.vuJMLaFofKVmFSaZejVfnIThuXR9YtEUnJcWwLU8ZZ8g.JPEG.blogup79/%EC%9C%A0%EC%9E%90%EC%B0%A8%ED%9A%A8%EB%8A%A51.jpg?type=w800'),
    Menu(
      name: '따뜻한 녹차',
      description: '따뜻한 물에 우린 녹차 한잔',
      image: 'http://res.heraldm.com/phpwas/restmb_idxmake.php?idx=507&simg=/content/image/2017/09/13/20170913000412_0.jpg'),
    Menu(
        name: '아이스 초코라떼',
        description: '우유에 초콜릿 가루나 시럽을 넣어 만든 초코 우유입니다.',
        image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[110566]_20210415134334432.jpg'),
    Menu(
        name: '시원한 우유',
        description: '우유에 얼음을 넣어 시원하게 제공합니다.',
        image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[18]_20210426095514018.jpg'),
    Menu(
        name: '아이스티',
        description: '물에 시럽이나 가루를 넣어 만든 복숭아 향이 나는 음료입니다. 시중에 판매하는 립톤과 같은 제품',
        image: 'http://www.cafebombom.co.kr/data/file/menu/2041981148_zOmURBS3_7f07389d76c04273ad6007e2a746e1d8c89ae218.jpg'),
    Menu(
        name: '아이스 녹차',
        description: '녹차를 우린 물에 얼음을 넣어 시원하게 제공하는 음료입니다.',
        image: 'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[400400000094]_20210415230316469.jpg'),
  ];

  List<Menu> getMenu() {
    return recommendMenu;
  }
}