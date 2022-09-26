import 'package:establishmentapp/pages/selectoptions_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(94,32,83,0.8),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 140,
                  width: 150,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/images/purpleacailogo.png"),
                      )
                  ),
                ),
                const Text(
                  'Purple Açaí',
                  style: TextStyle(fontSize: 25,color: Colors.white),
                ),
                const Text(
                  'EstablishmentApp',
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                TextField(
                  controller: user,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'User',
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextField(
                  controller: password,
                  style: const TextStyle(fontSize: 15,color: Colors.white),
                  maxLength: 8,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(94,32,83,1),),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){return const SelectOptions();}));
                  },
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child: Text('Entrar',style: TextStyle(fontSize: 15,color: Colors.white),)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
