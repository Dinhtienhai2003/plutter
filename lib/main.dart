import 'package:app_moblie/my_object.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyObject myObject = MyObject(value: 5);
  int n = 0;
  int powerResult = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              // nút hiện giá trị
              Text(
                'Counter: ${myObject.value}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      ElevatedButton(
                         //nút tăng giá trị
                        onPressed: () {
                          setState(() {
                            myObject.increase();
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 20),
                     
                      ElevatedButton(
                         //nút giảm giá trị
                        onPressed: () {
                          setState(() {
                            myObject.decrease();
                          });
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      ElevatedButton( 
                        //nút trả giá trị ở console
                        onPressed: () {
                          setState(() {
                            int returnedValue = myObject.returnValue;
                            print('Returned Value: $returnedValue');
                          });
                        },
                        child: const Text('Return Value'),
                      ),
                      const SizedBox(width: 20),
                      
                      ElevatedButton(
                        //nút đặt lại giá trị về 0
                        onPressed: () {
                          setState(() {
                            myObject.reset();
                          });
                        },
                        child: const Text('Reset Value'),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    //nút tính lũy thừa mũ 2
                    onPressed: () {
                      setState(() {
                        myObject.exponential();
                      });
                    },
                    child: const Text('Lũy thừa'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      // nhập lũy thừa mũ n
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nhập số nguyên n',
                      ),
                      onChanged: (value) {
                        setState(() {
                          if (value.isNotEmpty) {
                            n = int.parse(value);
                          } else {
                            n = 0;
                          }
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                    // núy tính lũy thừa n
                    onPressed: () {
                      setState(() {
                        powerResult = myObject.power(n);
                      });
                    },
                    child: const Text('Lũy thừa n'),
                  ),
                  Text(
                    'Lũy thừa n: $powerResult',
                    style: const TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
