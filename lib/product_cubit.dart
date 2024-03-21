// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:equatable/equatable.dart';




// class ProductCubit extends Cubit<ProductState123> {
//   ProductCubit() : super(ProductInitial());
  
//   void addProduct({required String name, required String id, required double price}) {
//     // Add logic to add product to Firebase Firestore
//   }
// }

// class ProductState123 extends Equatable{
//   @override
//   // TODO: implement props
//   List<Object?> get props => throw UnimplementedError();


// }

// class ProductInitial extends ProductState123 {}


import 'package:product_managment/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_database/firebase_database.dart';


class ProductBloc extends Cubit<List<Product>> {
  ProductBloc() : super([]);

  void addProduct(Product product) {
    state.add(product);
    emit(List.from(state));
  }

  void fetchProducts() {
    
    final reference = FirebaseDatabase.instance.reference().child('products');
    // reference.once().then((DataSnapshot snapshot) {
    //   // final productsMap = snapshot.value;
    //   // final List<Product> products = [];
    //   // productsMap.forEach((key, value) {
    //   //   products.add(Product(
    //   //     id: key,
    //   //     name: value['name'],
    //   //     price: value['price'].toDouble(),
    //   //   ));
    //   // });
    //  // emit(products);
    // });
  }
}
