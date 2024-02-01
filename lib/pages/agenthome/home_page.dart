import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moroxval/data/data.dart';
import 'package:moroxval/pages/evaluation/evaluation_form.dart';
import 'package:moroxval/size_config.dart';
import 'package:moroxval/style/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 7,
            ),
            child: Column(
              children: const [
                // User Info Area.
                UserInfo(),
                // searchInstructions Area.
                searchInstructions(),
                // Services Area.
                Services(),
                // EvaluationTab
                EvaluationTab(),
                // ArchivesTab
                ArchivesTab(),
              ],
            ),
          ),
          // Upcoming Appointments
          const InstructionRequest()
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text("👋 Hello!"),
      ),
      subtitle: Text(
        "Agent", //username based on user logged in
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.w700),
      ),
      trailing: Container(
        width: 48.0,
        height: 48.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppStyle.profile),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 18.0,
              height: 18.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppStyle.primarySwatch,
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class searchInstructions extends StatelessWidget {
  const searchInstructions({Key? key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.searchIcon),
          ),
          suffixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.filtterIcon),
          ),
          hintText: "Search..",
          fillColor: AppStyle.inputFillColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({Key? key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Tools",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

class EvaluationTab extends StatelessWidget {
  const EvaluationTab({Key? key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        // Handle the tap event, navigate to the Evaluation page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EvaluationForm()), // Replace with your EvaluationPage widget
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffDCEDF9),
                borderRadius: BorderRadius.all(Radius.circular(28.0)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal! * 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "EVALUATE",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                          Text(
                            "Remember to select your assigned Request ",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 11.0,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 2,
                      bottom: SizeConfig.blockSizeVertical! * 1,
                      ),
                      child: Image.asset(AppStyle.image1),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ArchivesTab extends StatelessWidget {
  const ArchivesTab({Key? key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        // Handle the tap event, navigate to the Archives page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArchivesPage()), // Replace with your ArchivesPage widget
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffDCEDF9),
                borderRadius: BorderRadius.all(Radius.circular(28.0)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal! * 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ARCHIVES",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                          Text(
                            "History of all previous evaluation,to be used as reference ",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              fontSize: 11.0,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 1,
                      bottom: SizeConfig.blockSizeVertical! * 3,
                      ),
                      child: Image.asset(AppStyle.image2),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArchivesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Archives Page'),
      ),
      body: Center(
        child: Text('Archives Content'),
      ),
    );
  }
}

class InstructionRequest extends StatelessWidget {
  const InstructionRequest({Key? key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal! * 7,
          ),
          child: Text(
            "Instruction Request",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Row(
              children: upcomingAppointmentsList
                  .map(
                    (e) => CupertinoButton(
                      onPressed: () {},
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        height: SizeConfig.blockSizeVertical! * 17,
                        width: SizeConfig.blockSizeHorizontal! * 80,
                        decoration: BoxDecoration(
                          color: e.color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              width: 71.46,
                              height: 99.03,
                              decoration: const BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(26.0),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    e.date,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  e.time,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        letterSpacing: 1,
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  e.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        height: 1.8,
                                        letterSpacing: 1,
                                      ),
                                ),
                                Text(
                                  e.subTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        letterSpacing: 1,
                                        height: 1.8,
                                        color: Colors.white60,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}