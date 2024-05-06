class TpricingCalculator {
  // calculate price based on tax and shipping

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);

    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

// calculate shipping cost
  static String calculatorShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(location) {
    // lookup the tax rate for give location from a tax rate database or api
    // return the appropriate tax rate
    return 0.10; // e.g. tax rate of 10%
  }

  static double getShippingCost(String location) {
    // lookup the shipping cost for the given location using shipping rate API
    // calculate shipping cost based on various factories like distance, weight, etc
    return 5.00; // shipping cost of $5
  }

  // sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0,
  //       (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
