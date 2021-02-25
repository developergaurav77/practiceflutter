import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://avatars.githubusercontent.com/u/75980464?s=400&u=1b7007a56123a7694abf27f7d38401c3d7144c11&v=4";
    return Drawer(
      child: Container(
        color: Colors.indigoAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.indigo),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
                margin: EdgeInsets.zero,
                accountName: Text("Gaurav Thagunna"),
                accountEmail: Text("gauravthagunna64@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              hoverColor: Colors.black,
              onTap: () {},
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.account_box_outlined,
                color: Colors.white,
              ),
              title: Text(
                "AboutMe",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.contact_mail,
                color: Colors.white,
              ),
              title: Text(
                "ContactMe",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
