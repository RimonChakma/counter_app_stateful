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

  int count = 0;

  increment(){
    setState(() {
      count++;
    });
  }

  decrement(){
    setState(() {
      if(count ==0){
       return null;
      }count--;
    });
  }

  reset(){
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("counter app"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("count:$count",style: const TextStyle(fontSize: 30),)),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            ElevatedButton(onPressed: (){
              decrement();
            }, child: Icon(Icons.remove)),
            ElevatedButton(onPressed: (){
              increment();
            }, child: Icon(Icons.add))
          ],),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            reset();
          }, child: Text("Reset"))
        ],
      )

      ,

    );
  }
}
