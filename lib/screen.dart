import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> _listItem = [
    'image/deadpool.jpg',
    'image/batman.jpg',
    'image/doll1.jpg',
    'image/hw.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.blueGrey,
          size: 30,
        ),
        centerTitle: true,
        title: Text(
          'ToyStoree',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 13),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('image/5.png'),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Produk Terlaris',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: _listItem
                            .map((item) => Card(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(item),
                                          fit: BoxFit.cover)),
                                )))
                            .toList())),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.grey,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: ('My Order'),
              ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inbox');
                },
                icon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                )),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                )),
            label: 'Profil ',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 105, 105),
        title: Text(
          'Search Page',
        ),
      ),
      body: Center(
          child: Text(
        'Ini adalah Halaman Search',
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.grey,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/galeri');
                },
                icon: const Icon(
                  Icons.image,
                  color: Colors.grey,
                )),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inbox');
                },
                icon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                )),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                )),
            label: 'Profil ',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class GaleriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 105, 105),
        title: Text(
          'Galeri Page',
        ),
      ),
      body: Center(
          child: Text(
        'Ini adalah Halaman Galeri',
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.grey,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/galeri');
                },
                icon: const Icon(
                  Icons.image,
                  color: Colors.grey,
                )),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inbox');
                },
                icon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                )),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                )),
            label: 'Profil ',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 105, 105),
        title: Text(
          'Inbox Page',
        ),
      ),
      body: Center(
          child: Text(
        'Ini adalah Halaman Inbox',
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.grey,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/galeri');
                },
                icon: const Icon(
                  Icons.image,
                  color: Colors.grey,
                )),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inbox');
                },
                icon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                )),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                )),
            label: 'Profil ',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 105, 105, 105),
        title: Text(
          'Profil',
        ),
      ),
      body: Center(
          child: Text(
        'Ini adalah Halaman Profil',
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.grey,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/galeri');
                },
                icon: const Icon(
                  Icons.image,
                  color: Colors.grey,
                )),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/inbox');
                },
                icon: const Icon(
                  Icons.mail,
                  color: Colors.grey,
                )),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                )),
            label: 'Profil ',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
