import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountView(),
    );
  }
}
class CountView extends StatefulWidget {
  const CountView({super.key});

  @override
  State<CountView> createState() => _CountViewState();
}

class _CountViewState extends State<CountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter app"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text("0",style: TextStyle(fontSize: 30),)),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            ElevatedButton(onPressed: (){}, child: Icon(Icons.remove)),
            ElevatedButton(onPressed: (){}, child: Icon(Icons.add))
          ],)
        ],
      )

      ,

    );
  }
}
