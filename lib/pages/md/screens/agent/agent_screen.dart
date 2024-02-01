import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moroxval/pages/md/screens/agent/widgets/item_schedule.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                const SizedBox(height: 50),
                SvgPicture.asset('assets/agent.png', height: 220),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                    ),
                    color: Colors.white
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0, right: 0,
                          child: Container(
                            height: 70, width: 70,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.indigo
                            ),
                          ),
                        ),
                        Image.asset('assets/images/agent.png', width: 80, height: 80)
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mr. Eric', style: Theme.of(context).textTheme.titleLarge,),
                          Text('Gaborone Branch', style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w300
                          )),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Icons.phone, color: Colors.indigo, size: 18),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Icons.message, color: Colors.amber, size: 18),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Icon(Icons.video_camera_back, color: Colors.deepOrangeAccent, size: 18),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('About Agent', style: Theme.of(context).textTheme.titleLarge,),
                ),
                const Text(
                  'Agent 3 has been with Morox for over 6 years with enough expirience to tackle the real estate industry',
                  style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
                ),
                const SizedBox(height: 15),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Valuations', style: Theme.of(context).textTheme.titleLarge,),
                ),
                 Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemSchedule(buttonText: 'Download', onPressed: () => print('Implement download functionality'), color: Colors.indigo),
                      ItemSchedule(buttonText: 'Upload', onPressed: () => print('Implement upload functionality'), color: Colors.amber),
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
