import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/cards/project_card.dart';
import 'package:share_plus/share_plus.dart';
import '../../example/projects.dart';
// import '../../widgets/cards/intro_card.dart';
import '../../widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.share,
          color: Colors.white,
        ),
        onPressed: () async {
          await Share.share(
              "Check out Jack's portfolio https://my-portfolio-1eaa0.web.app/#/");
        },
      ),
      body: SafeArea(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Projects",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          return ProjectCard(project: projects[index]);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
