import 'package:flutter/material.dart';

class SelectOptions extends StatefulWidget {
  const SelectOptions({Key? key}) : super(key: key);

  @override
  State<SelectOptions> createState() => _SelectOptionsState();
}

class _SelectOptionsState extends State<SelectOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(94,32,83,0.8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(height: 100,),
              ElevatedButton(
              style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(94,32,83,1),),
              onPressed: (){},
              child: const Text(
                  'Ver Produtos',
                  style: TextStyle(fontSize: 30),
              )
          ),
              const SizedBox(height: 30,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(94,32,83,1),),
                  onPressed: (){},
                  child: const Text(
                    'Criar Novo Produto',
                    style: TextStyle(fontSize: 30),
                  )
              ),
              const SizedBox(height: 30,),ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color.fromRGBO(94,32,83,1),),
                  onPressed: (){},
                  child: const Text(
                    'Editar Produtos',
                    style: TextStyle(fontSize: 30),
                  )
              ),
        ],
        ),
      ),
    );
  }
}
