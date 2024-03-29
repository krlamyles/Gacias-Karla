import 'package:flutter/material.dart';
import 'recipe.dart';
void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey, secondary: Colors.black,),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: SafeArea(

        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index){
            return buildRecipeCard(Recipe.samples[index]);
            
          }
        ),
      ),
    );
  }
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          Text(recipe.label),
        ]
      ),
    );
  }
}