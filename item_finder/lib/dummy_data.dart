import 'package:flutter/material.dart';

class Data
{
  final String name;
  final double price;
  final int quantity;

  Data({@required this.name, @required this.price, @required this.quantity});
}

class DataList
{
  List<Data> _dataList = [
    Data(name: 'ABCDE', price: 32, quantity: 32),
    Data(name: 'EFGG', price: 26, quantity: 24),
    Data(name: 'EFGH', price: 26, quantity: 24),
    Data(name: 'HFGG', price: 26, quantity: 24),
    Data(name: 'EFGR', price: 26, quantity: 24),
    Data(name: 'EFGX', price: 26, quantity: 24),
    Data(name: 'EFGRDVSV', price: 26, quantity: 24),
    Data(name: 'AAGGDKANVK', price: 26, quantity: 24),
    Data(name: 'BBGGJNDVJAVD', price: 26, quantity: 24),
    Data(name: 'ABCDEAJDVJAV', price: 32, quantity: 32),
    Data(name: 'EFGGAKVKDNKANV', price: 26, quantity: 24),
    Data(name: 'EFGHANVNKANVD', price: 26, quantity: 24),
    Data(name: 'HFGGKANDVNV', price: 26, quantity: 24),
    Data(name: 'EFGRHEUE', price: 26, quantity: 24),
    Data(name: 'EFGXADNVANDV', price: 26, quantity: 24),
    Data(name: 'EFGRAVUAHEUA', price: 26, quantity: 24),
    Data(name: 'AAGGAKNVJADNV', price: 26, quantity: 24),
    Data(name: 'BBGGAKVNADNV', price: 26, quantity: 24),
    Data(name: 'ABCDEAUHUHAVNVN', price: 32, quantity: 32),
    Data(name: 'EFGGKDVNNADV', price: 26, quantity: 24),
    Data(name: 'EFGHAKDVNAKDNV', price: 26, quantity: 24),
    Data(name: 'HFGGAKVNJAIEINV', price: 26, quantity: 24),
    Data(name: 'EFGRAKVNJAV', price: 26, quantity: 24),
    Data(name: 'EFGXAVNAVN', price: 26, quantity: 24),
    Data(name: 'EFGRAVMLADLMV', price: 26, quantity: 24),
    Data(name: 'AAGGAVAV', price: 26, quantity: 24),
    Data(name: 'BBGGAWRB', price: 26, quantity: 24),
    Data(name: 'ABCDESGWRB', price: 32, quantity: 32),
    Data(name: 'EFGGRSBBN', price: 26, quantity: 24),
    Data(name: 'EFGHEABSVD', price: 26, quantity: 24),
    Data(name: 'HFGGAGSBS', price: 26, quantity: 24),
    Data(name: 'EFGRABSBSS', price: 26, quantity: 24),
    Data(name: 'EFGXSBFB', price: 26, quantity: 24),
    Data(name: 'EFGRSVSB', price: 26, quantity: 24),
    Data(name: 'AAGGSVVS', price: 26, quantity: 24),
    Data(name: 'BBGGSBSFBFV', price: 26, quantity: 24),
  ];

  List<Data> get dataList
  {
    return [..._dataList];
  }
}