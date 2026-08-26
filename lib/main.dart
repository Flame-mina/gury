import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NotesListScreen(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF0F172A),
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0F172A)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        )
        
      );
      
  }
}

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({super.key});
  
  @override
  State<NotesListScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NotesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context) => const AddNoteScreen()),);
      },
      child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text("Нет записок", 
        style: TextStyle(color:Colors.white),
        ),
        ),
    );
  }
}

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Новая записка"),
        leading: IconButton(icon: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
        ),
        ),
        body: Padding(padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              
              decoration: InputDecoration(labelText: 'Заголовок', border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              Expanded(child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(labelText: "Текст", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Сохранить"),
              ),
            
          ],
        ),
        ),
        
      );
  }
}