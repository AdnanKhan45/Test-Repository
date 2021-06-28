import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/widgets/button_widget.dart';
import 'package:test_project/widgets/dropDownButton_widget.dart';
import 'package:test_project/widgets/text_field_widget.dart';

class SellerTransactionPage extends StatefulWidget {
  @override
  _SellerTransactionPageState createState() => _SellerTransactionPageState();
}

class _SellerTransactionPageState extends State<SellerTransactionPage> {
  int _radioValue = 0;
  String file1;
  bool checkedValue = false;
  bool checkedValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Seller Transaction Intake App",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("What is your first name?"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("What is your last name?"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("What is the List Price"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "If unknown, leave it blank",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("What is your Email"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Yes, yours! Not the sellers",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Property address"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "The Sellers address, NOT yours",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Seller 1 Email Address"),
              SizedBox(height: 5.0,),
              Text("We need this for electronic signatures", style: TextStyle(fontSize: 12, color: Colors.blue[400]),),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Seller 2 Email Address"),
              SizedBox(height: 5.0,),
              Text("We need this for electronic signatures", style: TextStyle(fontSize: 12, color: Colors.blue[400]),),
              SizedBox(
                height: 10.0,
              ),
              TextFieldWidget(text: "",),
              SizedBox(
                height: 20.0,
              ),
              Text("Seller's MAIN phone number"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Yep! Only 1 phone number is enough",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Total Commission Paid by the Seller"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Example: 6% Total pain by the seller",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Co-Operating broker Commission"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Usually 3%",
              ),
              SizedBox(
                height: 20.0,),
              Text(
                "Financing Accepted",
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "Cash",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "FHA",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "VA",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "Conventional",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "Other",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Listing Start date (Opitional)",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "When does it start?",
                style: TextStyle(fontSize: 15, color: Colors.lightBlueAccent),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFieldWidget(text: "YYYY"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFieldWidget(
                        text: "MM",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFieldWidget(
                        text: "DD",
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Listing Expiration Date",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "How long is this contract for?",
                style: TextStyle(fontSize: 15, color: Colors.lightBlueAccent),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFieldWidget(text: "YYYY"),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFieldWidget(
                        text: "MM",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFieldWidget(
                        text: "DD",
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("CANCELATION FEE (500 dollers)"),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "Yes",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "No",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  Text(
                    "Maybe, Call me to discuss further",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 15.0,),
              Text(
                "Additional Terms",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Ferber Transactions LLC is committed to\nprotecting and respecting your policy,\nand we'll only use your personal information to\nadminister your account and to provide the\nproducts and services you requested from\n us. From time to time, we would like to\ncontact you about your products and services,\nas well as other content that may be of\ninterest to you. If you consent to us\ncontacting you for this purpose, please tick\nbelow to say how you would like us to\ncontact you.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20.0,
                    height: 20.0,
                    child: Checkbox(
                      activeColor: Colors.redAccent,
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    "Terms of service: We will prepare up 3\noffers including revisions, any offer after th\n3rd will require a payment of 50 upfront.\nPlease check the box on the left to agree to\nthe terms of service.",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "In order to provide you content\nrequested, we need to store and process\nyour personal data. If you consent to us\nstoring your personal data for this purpose,\nplease tick the checkbox below.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20.0,
                    height: 20.0,
                    child: Checkbox(
                      activeColor: Colors.redAccent,
                      value: checkedValue1,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue1 = newValue;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text("I agree to allow Ferber Transactions LLC\nto store and process my personal data.", style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(height: 20.0,),
              Text("You can unsubscribe from these\ncommunications at any time. For more\ninformation on how to unsubscribe our\nprivacy practices, and respecting for policy,\nplease review our Privacy Policy", style: TextStyle(fontSize: 15),),
              SizedBox(height: 20.0,),
              ButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
}