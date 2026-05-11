import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP1 - Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PageAccueil(),
    );
  }
}
// ─── PAGE 1 ───────────────────────────────────
class PageAccueil extends StatefulWidget {
  @override
  State<PageAccueil> createState() => _PageAccueilState();
}
class _PageAccueilState extends State<PageAccueil> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
            SizedBox(height: 24),
            Text('Bienvenue sur Flutter !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Mon premier TP', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 32),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Votre prénom',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                String nom = _controller.text.trim();
                if (nom.isEmpty) nom = 'Visiteur';
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PageDetail(nom: nom),
                ));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text('Continuer'),
            ),
          ],
        ),
      ),
    );
  }
}
// ─── PAGE 2 ───────────────────────────────────
class PageDetail extends StatelessWidget {
  final String nom;
  const PageDetail({Key? key, required this.nom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue !'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.teal,
              child: Text(nom[0].toUpperCase(),
                  style: TextStyle(fontSize: 40, color: Colors.white)),
            ),
            SizedBox(height: 24),
            Text('Bonjour, $nom !',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Vous êtes sur la page de détail.',
                style: TextStyle(color: Colors.grey)),
            SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back),
              label: Text('Retour'),
            ),
          ],
        ),
      ),
    );
  }
}