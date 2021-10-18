import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  GlobalKey<FormState> _gkey = GlobalKey<FormState>();
  var _currency = ['₹', '\$', '€', '£', '¥'];
  var _defaultCurr = '₹';
  var amt = "";
  TextEditingController tb1 = TextEditingController();
  TextEditingController tb2 = TextEditingController();
  TextEditingController tb3 = TextEditingController();
  String _calc() {
    double n1 = double.parse(tb1.text);
    double n2 = double.parse(tb2.text);
    double n3 = double.parse(tb3.text);
    double amt = n1 * (1 + ((n2 / 100) * n3));
    return "$amt";
  }

  _reset() {
    tb1.text = "";
    tb2.text = "";
    tb3.text = "";
    amt = "";
    _defaultCurr = "₹";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "interest",
        theme: ThemeData(
            primaryColor: Colors.orange, accentColor: Colors.orange.shade50),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Simple interest"),
              flexibleSpace: SafeArea(
                child: Icon(
                  Icons.calculate,
                  size: 50,
                ),
              ),
            ),
            body: ListView(
              children: [
                Form(
                    key: _gkey,
                    child: Column(
                      children: [
                        getImage(),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 5, left: 15, right: 15, bottom: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "* initial prinicipal balance is required";
                              },
                              controller: tb1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Initial principal balance",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "* annual interest rate is required";
                              },
                              controller: tb2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Annual interest rate",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange))),
                            )),
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "* time duration is required";
                              },
                              controller: tb3,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "time (in years)",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.orange))),
                            )),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: DropdownButton(
                            items: _currency.map((e) {
                              return DropdownMenuItem(value: e, child: Text(e));
                            }).toList(),
                            onChanged: (dynamic data) {
                              onDropdownChange(data);
                            },
                            value: _defaultCurr,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (_gkey.currentState!.validate())
                                      amt = _calc();
                                  });
                                },
                                child: Text(
                                  "Calculate",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _reset();
                                  });
                                },
                                child: Text(
                                  "Reset",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ),
                            )),
                          ],
                        ),
                        Text(
                          "Final Amount is: $_defaultCurr $amt",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )),
              ],
            )),
      ),
    );
  }

  void onDropdownChange(data) {
    setState(() {
      _defaultCurr = data;
    });
  }
}

Widget getImage() {
  AssetImage assetImage = AssetImage('images/calc.jpg');
  Image image = Image(
    image: assetImage,
    width: 160.0,
    height: 120.0,
  );
  return Container(
    child: image,
  );
}

void main() {
  runApp(Calc());
}
