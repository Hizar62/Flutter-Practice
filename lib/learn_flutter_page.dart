import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/Human.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.grey,
              child: const Center(
                child: Text('This is Text Widget',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isSwitch ? Colors.green : Colors.amber),
                onPressed: () {
                  debugPrint("Eleveted Button");
                },
                child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined-Button Button");
                },
                child: const Text("Outlined-Button Button")),
            TextButton(
              onPressed: () {
                debugPrint("Text-Button Button");
              },
              child: const Text("Text-Button Button"),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: Color.fromARGB(255, 8, 123, 239),
                ),
                Text('Row Widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Color.fromARGB(255, 8, 123, 239),
                )
              ],
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newbool) {
                  setState(() {
                    isSwitch = newbool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newcheck) {
                  setState(() {
                    isCheckBox = newcheck;
                  });
                }),
            Image.network(
                'https://wallpapers.com/images/featured/creative-0ho3780ng1sfoloq.jpg'),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.grey,
              child: const Center(
                child: Text('This is Text Widget',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isSwitch ? Colors.green : Colors.amber),
                onPressed: () {
                  debugPrint("Eleveted Button");
                },
                child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined-Button Button");
                },
                child: const Text("Outlined-Button Button")),
            TextButton(
              onPressed: () {
                debugPrint("Text-Button Button");
              },
              child: const Text("Text-Button Button"),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: Color.fromARGB(255, 8, 123, 239),
                ),
                Text('Row Widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Color.fromARGB(255, 8, 123, 239),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
