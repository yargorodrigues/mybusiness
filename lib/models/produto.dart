class Produto {
  late final int _id;
  late final String _name;
  late final String _description;
  late final String _purchasePrice;
  late final String _salePrice;
  late final bool _status;

  Produto(this._id, this._name, this._description, this._purchasePrice,
      this._salePrice, this._status);

  Produto.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        _name = json['name'],
        _description = json['description'],
        _purchasePrice = json['purchase_price'],
        _salePrice = json['sale_price'],
        _status = json['status'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['purchase_price'] = this._purchasePrice;
    data['sale_price'] = this._salePrice;
    data['status'] = this._status;
    return data;
  }
}
