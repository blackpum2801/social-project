import 'package:flutter/material.dart';

class SearchRecent extends StatelessWidget {
  const SearchRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mới đây",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/image/avatar.jpg'),
            ),
            title: Text('Trần Hoàng Nam'),
            trailing: Icon(Icons.close_rounded, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/image/avatar.jpg'),
            ),
            title: Text('Trần Hoàng Nam'),
            trailing: Icon(Icons.close_rounded, size: 20),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/image/avatar.jpg'),
            ),
            title: Text('Trần Hoàng Nam'),
            trailing: Icon(Icons.close_rounded, size: 20),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
