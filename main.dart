import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.blue,
          onPrimary: Colors.white,
          secondary: Colors.green,
          onSecondary: Colors.white,
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SectionTitle(title: 'Города России.'),
            const Movie(
              imagePath: 'https://cdn.tripster.ru/thumbs2/bb93043c-9b18-11ed-b455-fa17e0b83c4a.1220x600.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}

class MoscowPage extends StatelessWidget {
  const MoscowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Москва'),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SectionTitle(title: 'Достопримечательности Москвы'),
            const Movie(
              imagePath: 'https://cdn.tripster.ru/thumbs2/4bdc50b6-82c2-11ee-aeeb-bacb0497e01f.1220x600.jpeg',
            ),
            const SectionTitle(title: 'Красная площадь'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/photos/9228b1f9-8e39-4d6e-ba48-f68f2c116acf.jpg',
              description:
                  'История самой известной площади России началась в 1493 году, когда для увеличения торгового пространства под стенами Кремля расчистили полосу шириной в 240 метров. Изначально она называлась Пожаром или Торгом, затем Троицкой, так как в ее южной части стояла церковь Троицы. Красной площадь стала после возведения храма Василия Блаженного. Современный облик начал прорисовываться во второй половине XIX века, с появлением масштабных сооружений – Средних и Верхних торговых рядов, здания Исторического музея. Серьезный идеологический вес площадь обрела уже после революции.',
            ),
            const SectionTitle(title: 'Московский Кремль'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/photos/8628885b-42fe-4f03-921b-60f7a671cfa3.jpg',
              description:
                  'Крепость в центре столицы имеет огромное историко-художественное и общественно-политическое значение. Первые сооружения из дерева здесь появились в 1264 году, когда на этой территории московские удельные князья построили свою резиденцию. Кремль, каким мы его знаем сейчас, начал формироваться во времена правления Ивана III, когда царь решил возвести на Боровицком холме масштабное фортификационное сооружение. Правитель нанял самых известных зодчих из Милана, и они в полной мере оправдали репутацию лучших строителей Европы.',
            ),
            const SectionTitle(title: 'Собор Казанской иконы Божией Матери на Красной площади'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/photos/638600a3-a184-401c-b766-4d945d1fcf80.jpg',
              description:
                  'Храм построен в честь освобождения Москвы от польских интервентов в 1625 году. Название собор получил по имени иконы Казанской Богоматери – главной святыни народного ополчения. Церковь горела, перестраивалась, расширялась. В советский период, во времена сталинской реконструкции Манежной площади, собор демонтировали. Однако перед этим архитектор Барановский сделал замеры и фотофиксацию всех деталей храма. Инициатива неравнодушного специалиста позволила спустя годы восстановить здание с максимальной исторической достоверностью.',
            ),
            const SectionTitle(title: 'Иверские (Воскресенские) ворота'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/thumbs2/dfd40fb0-d450-11e7-9556-6e714efd800d.800x600.jpg',
              description:
                  'Оригинальные Воскресенские ворота с двумя арками были построены как часть китайгородской стены в 1535 году с оборонительной целью – они предназначались для отражения атак неприятеля с выгодных позиций. В 1556 году Иван Грозный установил у ворот клетку со львами, подаренными королем Англии, после чего ворота стали называть Львиными. В 1669 году над воротами построили часовню специально для иконы Иверской Богоматери. Иверскую часовню снесли в 1929 году, а на ее место водрузили фигуру рабочего. В 1993 году ворота реконструировали и восстановили часовню в изначальном облике.',
            ),
          ],
        ),
      ),
    );
  }
}

class SaintPetersburgPage extends StatelessWidget {
  const SaintPetersburgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Санкт Петербург'),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SectionTitle(title: 'Достопримечательности Санкт Петербурга'),
            const Movie(
              imagePath: 'https://cdn.tripster.ru/thumbs2/b138c92c-184e-11ef-b24b-a230c3e1b74b.800x600.jpeg',
            ),
            const SectionTitle(title: 'Эрмитаж'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/photos/c51a21e6-886b-4e13-bd18-d236cfe3e1b2.jpg',
              description:
                  'Эрмитаж считается сокровищницей мировой живописи. Основанный в 1764 году как частная картинная галерея Екатерины II, сегодня он является музеем мирового значения. Здесь собраны коллекции работ именитых художников разных стран и периодов: живописное искусство Фландрии, Испании, Голландии, Венецианской школы эпохи Возрождения и т.д. Посетители могут увидеть такие прославленные шедевры, как «Юноша с лютней» Караваджо, «Мадонна Литта» да Винчи, «Вакх» Рубенса и другие. Помимо картин, в музее представлены скульптура разных стран. Отдельный интерес представляет галерея портретов Романовых и внутреннее убранство самого дворца. Чтобы посмотреть все экспонаты в этом музее, нужно потратить несколько дней.',
            ),
            const SectionTitle(title: 'Невский проспект'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/thumbs2/1b4fad17-babc-11ea-b1af-025c4c6e7a28.800x600.jpg',
              description:
                  'Самая популярная пешеходная улица города тянется 4,5 километра. Проспект называется в честь Александро-Невской лавры, к которой он ведет. На Невском много исторических зданий, представляющих интерес. Например, можно посмотреть дом Зингера, в котором сейчас располагается Дом книги. Украшение улицы — Казанский собор, одна из самых крупных церквей Санкт-Петербурга. Невский проспект — любимое место для гуляний у туристов и жителей города. Здесь много кафе и ресторанов, магазинов, сувенирных лавок. Вдоль проспекта располагаются пристани, с которых можно отправиться на речную прогулку по каналам.',
            ),
            const SectionTitle(title: 'Русский музей'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/thumbs2/7c0b574e-a890-11ed-82b8-36b22d576eb8.1220x600.jpeg',
              description:
                  'Это второй по значимости музей города, где представлено крупнейшее собрание российского искусства в мире — от древнерусских икон до советского и новейшего искусства. Всего в фондах музея около 400 тысяч экспонатов. Здесь можно вживую увидеть знакомые с детства картины, например, «Последний день Помпеи» Брюллова, «Бурлаки на Волге» Репина, «Девятый вал» Айвазовского, «Грачи прилетели» Саврасова и другие шедевры русских художников. На посещение музея нужно закладывать пару дней.',
            ),
          ],
        ),
      ),
    );
  }
}

class KazanPage extends StatelessWidget {
  const KazanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Казань'),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SectionTitle(title: 'Достопримечательности Казани'),
            const Movie(
              imagePath: 'https://cdn.tripster.ru/thumbs2/3a59c510-57e0-11ee-a5b1-e2b100a0f340.1220x600.jpeg',
            ),
            const SectionTitle(title: 'Казанский Кремль'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/thumbs2/34cae736-c357-11ee-9d6b-ba9423b322e7.800x600.jpeg',
              description:
                  'Кремль — визитная карточка столицы Татарстана. Кстати, само слово «кремль» — татарского происхождения и в переводе на русский означает «укрепление». Для сравнения, Московский кремль младше Казанского на 200 лет.',
            ),
            const SectionTitle(title: 'Башня Сююмбике'),
            const MovieDescription(
              imagePath: 'https://cdn.tripster.ru/photos/85e9ad26-2e25-4a8f-9ad9-d1b0dcc8b610.jpg',
              description:
                  'На территории кремля есть своя Пизанская башня — это башня Сююмбике. Она занимает третье место по углу наклона среди «падающих» башен мира: ее вершина отклонилась от вертикали на 2 м из-за разрушения фундамента. 58-метровая башня построена в начале XVII века на самой высокой точке кремлевского холма. По своему виду Сююмбике очень напоминает Боровицкую башню Московского Кремля.',
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDescription extends StatelessWidget {
  final String imagePath;
  final String description;

  const MovieDescription({
    super.key,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imagePath,
            width: 300,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String description;

  const Description({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class Movie extends StatelessWidget {
  final String imagePath;

  const Movie({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imagePath,
            width: 700,
            height: 350,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey),
            child: Text('Меню'),
          ),
          ListTile(
            title: const Text('Главная'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const MainPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Москва'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const MoscowPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Санкт Петербург'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const SaintPetersburgPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Казань'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => const KazanPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
