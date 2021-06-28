import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/widgets/button_widget.dart';
import 'package:test_project/widgets/dropDownButton_widget.dart';
import 'package:test_project/widgets/text_field_widget.dart';

class BuyerTransactionPage extends StatefulWidget {
  @override
  _BuyerTransactionPageState createState() => _BuyerTransactionPageState();
}

class _BuyerTransactionPageState extends State<BuyerTransactionPage> {
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
                "Buyer Transaction Intake App",
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
                text: "Yes, your name!",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("What is your last name?"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "We need this for your TC Agreement",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Your email"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Yes, your email",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Property Address"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "or MLS number",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("What is the Purchase Price"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "offer amount not the list price",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Escrow Deposit Amount"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "hint: 1% of purchase price",
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Type of financing or Cash",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              DropDownButtonWidget(),
              SizedBox(
                height: 20.0,
              ),
              Text("Buyer 1 name"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Please be accurate",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Buyer 1 email"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Buyer 2 name"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Buyer 2 email"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Buyer's Phone"),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Just 1 is enough",
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Inspections",
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
                    "Use our trusted partner",
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
                    "Let buyer decide",
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
                    "Call me",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Offer Expiration Date",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Year-Month-Day",
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
                "Expected Closing Date",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Year-Month-Day",
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
                "How many days for the inspiration Period?",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "Default is 15",
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Internal Notes",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "",
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Additional Terms",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Please use the exact verbiage you want on the contact",
                style: TextStyle(fontSize: 15, color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextFieldWidget(
                text: "This will be copied and pasted into the contact",
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Upload Contact and/or Preapproval Letter (Opitional)",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "or Proof of Funds",
                style: TextStyle(fontSize: 15, color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 120,
                height: 28,
                decoration: BoxDecoration(color: Colors.grey[200], border: Border.all(width: 1.0), borderRadius: BorderRadius.circular(3.0)),
                child: Center(
                  child: Text("Choose Files"),
                ),
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