import 'package:flutter/material.dart';
import 'package:section13/adaptive/adaptive_indicator.dart';
import 'package:section13/constants.dart';

class MobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
          Expanded(
            child: Container(
              color: Colors.teal,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'Login with your account',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children:
                    [
                      Expanded(
                        child: Container(
                          color: Colors.teal,
                          height: 40,
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 40,
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text(
                              'REGISTER',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: AdaptiveIndicator(
                    os: getOs(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}