import 'package:flutter/material.dart';
import 'package:news_bloc/compoants/app_style.dart';
import 'package:news_bloc/screen/demo.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayScreen extends StatefulWidget {
  const RazorpayScreen({super.key});

  @override
  State<RazorpayScreen> createState() => _RazorpayScreenState();
}

class _RazorpayScreenState extends State<RazorpayScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear(); // clear the listeners
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razorpay'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Product Image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/200/300',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Product Name and Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\₹ 99.99',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Product Description
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Demo(),));
              },
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),

            // Product Quantity and Add to Cart
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgcolor,
                  foregroundColor: whitecolor,
                ),
                onPressed: () async {
                  var options = {
                    'key': 'rzp_live_ILgsfZCZoFIKMb',
                    'amount': 100*100,
                    'name': 'Vinay Chauhan',
                    'description': 'Flutter Devloper',
                    'prefill': {
                      'contact': '7862916153',
                      'email': 'test@razorpay.com'
                    }
                  };

                  try {
                    _razorpay.open(options);
                  } catch (e) {
                    debugPrint('Error: $e');
                  }
                },
                child: Text('Buy Now'),
              ),
            ),
          ],
        ),
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
    debugPrint('Payment Error: ${response.code} - ${response.message}');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Payment Error',style: TextStyle(backgroundColor: Colors.red,color: Colors.white),)
    ));
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
    debugPrint('External Wallet: ${response.walletName}');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
    Text('Payment Success',style: TextStyle(backgroundColor: Colors.green,color: Colors.white),)
    ));
  }
}



