class CancelOrderModel {
  final String orderNumber;
  final String totalPrice;
  final String items;
  final String customerName;

  CancelOrderModel({this.orderNumber, this.totalPrice, this.items,  this.customerName});
}

List<CancelOrderModel> cancelOrderDummyData = [
  new CancelOrderModel(
    customerName: "Aslam",
    orderNumber: "98237",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "2000",
  ),
  new CancelOrderModel(
    customerName: "Usman",
    orderNumber: "092318490",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "29000",
  ),
  new CancelOrderModel(
    customerName: "Junaid",
    orderNumber: "092318490",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "29000",
  ),
  new CancelOrderModel(
    customerName: "Umair",
    orderNumber: "23123",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "200",
  ),
  new CancelOrderModel(
    customerName: "Ali",
    orderNumber: "324423",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "20220",
  ),
  new CancelOrderModel(
    customerName: "Daniyal",
    orderNumber: "235432",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "202320",
  ),
  new CancelOrderModel(
    customerName: "Umair",
    orderNumber: "23123",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "200",
  ),
  new CancelOrderModel(
    customerName: "Ali",
    orderNumber: "324423",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "20220",
  ),
  new CancelOrderModel(
    customerName: "Daniyal",
    orderNumber: "235432",
    items: "Pipe, bends, pvc, tap, wall ..",
    totalPrice: "202320",
  ),
];
