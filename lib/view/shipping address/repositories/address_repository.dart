import 'package:shoestore/view/shipping%20address/models/address.dart';

class AddressRepository {
  List<Address> getAddresses() {
    return const [
      Address(
        id: '1',
        label: 'Home',
        fullAddress: '123 Main Street, Apt45',
        city: 'New york',
        state: 'NY',
        zipCode: '12500',
        isDefault: true,
        type: AddressType.home,
      ),

      Address(
        id: '1',
        label: 'Office',
        fullAddress: '123 Main Business Avenui, suite200',
        city: 'New york',
        state: 'NY',
        zipCode: '12500',
        type: AddressType.home,
      ),
    ];
  }

  Address? getDefaultAddress() {
    return getAddresses().firstWhere(
      (address) => address.isDefault,
      orElse: () => getAddresses().first,
    );
  }
}
