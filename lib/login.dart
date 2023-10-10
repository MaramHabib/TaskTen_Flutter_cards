import 'package:flutter/material.dart';
import 'package:taskren_cards102/secondcontext.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: LoginPage(),
  ));
}

//const LoginPage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  var user=TextEditingController();
  var passcode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('images/diamond.png',
                  height: 50,
                  width: 50,),
                const SizedBox(height: 16.0),
                const Text('Welcome '),
              ],
            ),
            const SizedBox(height: 120.0),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: user ,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: '  Username',
                ),
              ),
            ),
// spacer
            const SizedBox(height: 12.0),

// spacer
            const SizedBox(height: 20.0),
// [Password]
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller:passcode ,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),

            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
            OverflowBar(
              alignment: MainAxisAlignment.end,

              children: [
                ElevatedButton(
                  child: const Text('Cancel'),
                  onPressed: (){
                    user.clear();
                    passcode.clear();
                  },
                ),

                SizedBox(width: 25,),

                ElevatedButton(
                  child: const Text('Next'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mysecondscreen(data: "Welcome ${user.text}"
                      )),
                    );
                  },
                ),
              ],

            )



          ],
        ),
      ),
    );

  }
}
