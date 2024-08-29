import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          var options = {
            'key': 'rzp_live_ILgsfZCZoFIKMb',
            'amount': 100*100,
            'name': 'Harsh Savani',
            'description': 'HV Solution',
            'prefill': {
              'contact': '8888888888',
              'email': 'test@razorpay.com'
            }
          };
          try{
            _razorpay.open(options);
          }catch(e){
              print("Error:${e.toString()}");
          }
        }, child: Text('Pay Now')),
      ),
    );
  }
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    debugPrint('Payment Success: ${response.paymentId}');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Payment Success',style: TextStyle(backgroundColor: Colors.green,color: Colors.white),)
    ));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    debugPrint('Payment Fail: ${response.error}');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Payment Success',style: TextStyle(backgroundColor: Colors.green,color: Colors.white),)
    ));
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
    debugPrint('Payment Success: ${response.walletName}');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Payment Success',style: TextStyle(backgroundColor: Colors.green,color: Colors.white),)
    ));
  }
}
