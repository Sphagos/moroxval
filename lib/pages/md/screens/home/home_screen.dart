import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moroxval/pages/md/screens/home/widgets/item_category.dart';
import 'package:moroxval/pages/md/screens/home/widgets/item_doctor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 5),
          child: SvgPicture.asset('assets/svg/menu.svg'),
        ),
        scrolledUnderElevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/morox-logo.png'),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 30),
          Text('WelcomeBack\nMD', style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 15),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).colorScheme.primary.withOpacity(.05)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                  ),
                )
              ),
              Positioned(
                right: 0, top: 0, bottom: 0,
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).colorScheme.primary
                  ),
                  child: const Icon(CupertinoIcons.search, color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('ACTIONS', style: Theme.of(context).textTheme.titleLarge,),
          ),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemCategory(title: 'Add Agent', icon: Icons.add, color: Colors.indigo),
                ItemCategory(title: 'Remove Agent', icon: Icons.remove, color: Colors.teal),
                ItemCategory(title: 'View instruction', icon: Icons.panorama_fish_eye_sharp, color: Colors.brown),
              ],
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Morox Agents', style: Theme.of(context).textTheme.titleLarge,),
          ),
          const Column(
            children: [
              ItemDoctor(title: 'Mrs Steffy', subtitle: 'Morox-Gabs', image: 'assets/images/agent.png', color: Color.fromARGB(255, 7, 77, 174)),
              ItemDoctor(title: 'Mr Andrew Setuke', subtitle: 'Morox-Gabs', image: 'assets/images/agent.png', color:Color.fromARGB(255, 7, 77, 174)),
              ItemDoctor(title: 'Mr Topo Rapula', subtitle: 'Morox-Gabs', image: 'assets/images/agent.png', color: Color.fromARGB(255, 7, 77, 174)),
            ],
          )
        ],
      ),
    );
  }
}
