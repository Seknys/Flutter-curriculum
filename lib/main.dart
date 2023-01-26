import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'web.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('STEVEN FERNANDO GUAÑUNA CEPEDA'),
      ),
      body: Column(
        children: [
          // firstColumn,

          firstColumn,

          Center(
              child: ElevatedButton(
                  onPressed: _createPDF,
                  child: const Text('Descargar Steven Guañuna Pdf'))),
        ],
      ),
    );
  }

  Widget firstColumn = Container(
    // padding: const EdgeInsets.all(32),
    margin: const EdgeInsets.only(left: 25),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'PERFIL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Mi nombre es Steven Guañuna soy un programador junior enfocado en el desarrollo web. Me considero una persona muy apasionada y siempre con ganas de aprender algo nuevo, de aprender de los fallos y tratar de superarme cada día más. En la actualidad manejo muy buenos conocimientos en Front-End, pero al momento me encuentro aprendiendo tecnologías en Back-End, para en un futuro ser un desarrollador Full Stack.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'EDUCACION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              "2022",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Quito-Ecuador",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "Desarrollo de software",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Escuela Politécica Nacional",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'EXPERIENCIA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  '1 Agosto - 1 Noviembre',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'IQBIT - Ec',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '     Desarrollador / Junior',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Text(
                '    Quito, Ecuador',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - Desarrollador de productos de software ',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Tester y correccion de bugs de productos',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Registro de documentacion ',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Gestion de informacion',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(23),
          margin: const EdgeInsets.only(left: 25),
          color: Colors.grey[200],
          child: Column(
            children: [
              // ClipRRect(
              //     borderRadius: BorderRadius.circular(200),
              //     child: Container(
              //       padding: const EdgeInsets.symmetric(vertical: 15),
              //       child: Image.asset(
              //         'images/Profile.jpg',
              //         width: 200,
              //         height: 200,
              //         fit: BoxFit.cover,
              //       ),
              //     )),
              const CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage('images/Profile.jpg'),
              ),
              Row(
                children: const [
                  Icon(Icons.phone, color: Colors.red),
                  Text("  +593 999 038 988")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.red),
                  Text("   stevenfgc@hotmail.com")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.directions, color: Colors.red),
                  Text("   Machachi / Ecuador")
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  "HABILIDADES",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 300,
                child: FittedBox(
                    child: Text(
                        "Html, Css, JavaScript, Java, Flutter, Python, MySQL y Linux")),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  "IDIOMAS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text("Materno: Español"),
              const Text("Adicional: Ingles"),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  "REFERENCIAS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

  Widget rowPhone = Row(
    children: const [Icon(Icons.phone, color: Colors.red), Text("342743278")],
  );

  Future<void> _createPDF() async {
    //Create a new PDF document
    PdfDocument document = PdfDocument();
    final PdfPageTemplateElement headerTemplate =
        PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 515, 50));
    final myPage = document.pages.add();
    final Size pageSize = myPage.getClientSize();

    // headerTemplate.graphics.drawString(
    //     'This is page header', PdfStandardFont(PdfFontFamily.helvetica, 12),
    //     bounds: const Rect.fromLTWH(0, 15, 200, 20));
    // headerTemplate.graphics.drawRectangle(
    //     bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
    //     pen: PdfPen(PdfColor(142, 170, 219)));

    // document.template.top = headerTemplate;

    //Add a new page and draw text
    // myPage.graphics.drawString(
    //     'Hello World!', PdfStandardFont(PdfFontFamily.helvetica, 20),
    //     brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    //     bounds: const Rect.fromLTWH(0, 0, 500, 50));

    myPage.graphics.drawImage(PdfBitmap(await _readImage('cs1.png')),
        Rect.fromLTWH(0, 0, pageSize.width, 500));

    //Save the document
    List<int> bytes = await document.save();

    //Dispose the document
    document.dispose();

    saveAndLaunchFile(bytes, "StevenGuañuna-Curriculum.pdf");
  }
}

Future<Uint8List> _readImage(String name) async {
  final data = await rootBundle.load('images/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
