import 'package:cars_ms/components/my_button.dart';
import 'package:cars_ms/components/my_cart_tile.dart';
import 'package:cars_ms/models/insurance_options.dart';
import 'package:cars_ms/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InsuranceOptions>(builder: (context, insuranceOptions, child){
      // cart
      final userCart = insuranceOptions.cart;

      // scaffold UI
      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            // clear cart button
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Are you sure you want to clear the cart?"),
                        actions: [
                          // cancel button
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel"),
                          ),

                          // yes button
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              insuranceOptions.clearCart();
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      ),
                  );
                },
                icon: const Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [

            // list of cart
            Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                      child: Center(
                          child: Text("Your Cart is Empty!")
                      ),
                    )
                        : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart item
                          final cartItem = userCart[index];

                          // return cart title UI
                          return MyCartTile(cartItem: cartItem);
                        },
                      ),
                    ),

                  ],
                ),
            ),

            
            // button to pay
            MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                  ),
                ),
                text: "Go to Checkout",
            ),

            const SizedBox(height: 25),
          ],
        ),
      );
    },);
  }
}
