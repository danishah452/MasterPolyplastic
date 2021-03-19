class PriceListModelClass {
  final String category;
  final String itemDes;
  final String partNo;
  final String rate;
  final String orderNumber;

  PriceListModelClass({this.category, this.itemDes, this.partNo, this.rate, this.orderNumber});
}

List<PriceListModelClass> dummyData = [
  new PriceListModelClass(category: "Pipes", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "2312"),
  new PriceListModelClass(category: "Bends", itemDes: "PVC Bends", partNo: "8912", rate: "219", orderNumber: "3123"),
  new PriceListModelClass(category: "PVC", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "2134"),
  new PriceListModelClass(category: "Tapes", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "2341"),
  new PriceListModelClass(category: "Hooks", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "34"),
  new PriceListModelClass(category: "Wiring", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "342"),
  new PriceListModelClass(category: "Handle", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "3425"),
  new PriceListModelClass(category: "UV Light", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "234"),
  new PriceListModelClass(category: "UV Light", itemDes: "PVC Pipes", partNo: "8912", rate: "219", orderNumber: "234"),

];
