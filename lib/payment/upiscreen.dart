// ignore: unused_import
import 'package:cording/finished/finished.dart';
import 'package:cording/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:pin_code_view/pin_code_view.dart';

import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart' show PlatformException;

// ignore: must_be_immutable
class Pinscreen extends StatefulWidget {
  String amount;
   Pinscreen({required this.amount});

  @override
  _PinscreenState createState() => _PinscreenState();
}

class _PinscreenState extends State<Pinscreen> {

final LocalAuthentication auth = LocalAuthentication();
 
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  @override


  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
          localizedReason: 'Let OS determine authentication method',
          useErrorDialogs: true,
          stickyAuth: true);
      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = "Error - ${e.message}";
      });
      return;
    }
    if (!mounted) return;

    setState(
        () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
        if(authenticated){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Loading(amount: widget.amount,),));
        }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        titleSpacing: 10,
        leading: Text(
          // ignore: unnecessary_brace_in_string_interps
          "Sending: ${widget.amount}.00",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18
          ),
        ),
        title: Text('Enter your PIN',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 80,
                  onPressed: (){
                    _authenticate();
                  }, 
                  icon: Icon(Icons.fingerprint_outlined,size: 80, color: Colors.white,))
              ],
            ),
          ),
        ),
      ),
      body: PinCode(
        correctPin: '7799',
        codeLength: 4,
        
        codeTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        
        
        title: Text('Ente your Pin or Put your Finger ',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600
        )),
        subTitle: Text(
          '',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
        keyTextStyle: TextStyle(
          color: Colors.white70,
          fontSize: 20,
          fontWeight: FontWeight.w600
          
        ),
        
        
        errorTextStyle: TextStyle(
          color: Colors.blueAccent
        ),
        
        
        obscurePin: true,
        backgroundColor: Colors.deepPurpleAccent[700],
        onCodeSuccess: (success){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Loading(amount: widget.amount,),));
        },
        onCodeFail: (fail) {
          AlertDialog(
            title: Text('WrongPin Entered',
            style: TextStyle(
              fontSize: 20
            ),
            ),
            
          );
        },
      )
    );
  }
}