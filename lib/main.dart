import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff7FD9DC),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  botton(Icons.note_add, 'Projects', () {}),
                  botton(Icons.note_alt_outlined, 'Draft', () {}),
                  botton(Icons.group_rounded, 'Group Work', () {}),
                  const Spacer(),
                  botton(Icons.settings_applications, 'Settings', () {}),
                  botton(Icons.emoji_people_rounded, 'Invite members', () {}),
                  botton(Icons.add_circle_outlined, 'New Draft', () {}),
                  botton(Icons.add_circle_outlined, 'New Project', () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 350),
                        child: const Text(
                          'Mi Espacio de Trabajo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            fontFamily: 'Anaheim',
                          ),
                        ),
                      ),
                      //SizedBox(width: 20),
                      const SizedBox(width: 200),
                      const Icon(Icons.share),
                      const SizedBox(width: 20),
                      const Icon(Icons.more_vert),
                      //
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      proyecto(),
                      const SizedBox(height: 40),
                      proyecto(),
                      const SizedBox(height: 40),
                      proyecto(),
                      const SizedBox(height: 40),
                      proyecto(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  proyecto() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff7FD9DC),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      height: 100,
      width: 600,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      color: Color(0xff867D77),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Titulo del Proyecto',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Descripcion del proyecto', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15
                    ),),
                  ),
                ),
              ),
            ],
          ),
         const Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.grey[100]),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: const Text(
            'Entrar al Proyecto',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
