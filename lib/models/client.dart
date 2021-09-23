
class Cliente {

  late final String _id;
  late final String _name;
  late final String _cpf;
  late final String _rg;
  late final String _dob;
  late final String _zipcode;
  late final String _address;
  late final String _number;
  late final String _complement;
  late final String _neighborhood;
  late final String _city;
  late final String _state;
  late final String _cellphone;
  late final String _whatsapp;
  late final String _email;
  late final String _status;
  late final String _observation;


  Cliente(
      this._id,
      this._name,
      this._cpf,
      this._rg,
      this._dob,
      this._zipcode,
      this._address,
      this._number,
      this._complement,
      this._neighborhood,
      this._city,
      this._state,
      this._cellphone,
      this._whatsapp,
      this._email,
      this._status,
      this._observation);


  String get id => _id;

  Cliente.fromJson(Map<String, dynamic> json) :
        _id = json['id'],
        _name = json['name'],
        _cpf = json['cpf'],
        _rg = json['rg'],
        _dob = json['dob'],
        _zipcode = json['zipcode'],
        _address = json['adress'],
        _number = json['number'],
        _complement = json['complement'],
        _neighborhood = json['neighborhood'],
        _city = json['city'],
        _state = json['state'],
        _cellphone = json['cellphone'],
        _whatsapp = json['whatsapp'],
        _email = json['email'],
        _status = json['status'],
        _observation = json['observation'];

  Map<String, dynamic> toJson() =>
      {
        'id' : _id,
        'name' : _name,
        'cpf' : _cpf,
        'rg' : _rg,
        'dob' : _dob,
        'zipcode' : _zipcode,
        'adress' : _address,
        'number' : _number,
        'complement' : _complement,
        'neighborhood' : _neighborhood,
        'city' : _city,
        'state' : _state,
        'cellphone' : _cellphone,
        'whatsapp' : _whatsapp,
        'email' : _email,
        'status' : _status,
        'observation' : _observation,
      };
}