import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

//                                          FORM FUNCTIONS
final formKey = GlobalKey<FormState>();

//                                          VALIDATORS

String? numberValidator(String? fieldContent) {
  //<-- add String? as a return type
  if (fieldContent == null || fieldContent.isEmpty) {
    return '*Required';
  } else if (!RegExp(r"^\d+$").hasMatch(fieldContent)) {
    return "Only Numbers Allowed";
  }
  return null;
}

String? alphabetValidator(String? fieldContent) {
  //<-- add String? as a return type
  if (fieldContent == null || fieldContent.isEmpty) {
    return '*Required';
  } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(fieldContent)) {
    return "Only Alphabets Allowed";
  }
  return null;
}

String? emailValidator(String? fieldContent) {
  //<-- add String? as a return type
  if (fieldContent == null || fieldContent.isEmpty) {
    return '*Required';
  } else if (!EmailValidator.validate(fieldContent)) {
    return 'Please Enter Valid Email';
  }
  return null;
}
String? emptyFieldValidator(String? fieldContent) {
  //<-- add String? as a return type
  if (fieldContent == null || fieldContent.isEmpty) {
    return '*Required';
  }
  return null;
}


//                           TextFormField Functions

//All the fields related to Numbers

Container numericField(String text, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(top: 4.5, bottom: 4.5),
    child: TextFormField(
      keyboardType: TextInputType.number,
      validator: numberValidator,
      controller: controller,
      decoration: InputDecoration(label: Text(text), border: roundBorder()),
    ),
  );
}

// All the Field Related to Alphabets

Container alphabetField(String text, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(top: 4.5, bottom: 4.5),
    child: TextFormField(
      validator: alphabetValidator,
      controller: controller,
      decoration: InputDecoration(label: Text(text), border: roundBorder()),
    ),
  );
}
// All the fields related to Email

Container emailField(String text, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(top: 5, bottom: 5),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      validator: emailValidator,
      decoration: InputDecoration(label: Text(text), border: roundBorder()),
    ),
  );
}

// To give border Radius to all the fields
OutlineInputBorder roundBorder() {
  return OutlineInputBorder(borderRadius: BorderRadius.circular(20));
}

//                              CONTROLLERS

// PERSONAL
var fNameController = TextEditingController();
var mNameController = TextEditingController();
var lNameController = TextEditingController();
var dateController = TextEditingController();
var genderController = TextEditingController();
var aadharController = TextEditingController();
var religionController = TextEditingController();
var casteController = TextEditingController();

// FAMILY
var fOccupationController = TextEditingController();
var motherNameController = TextEditingController();
var motherTongueController = TextEditingController();

//CONTACT
var sPhone1Controller = TextEditingController();
var sPhone2Controller = TextEditingController();
var pPhoneController = TextEditingController();
var sEmailController = TextEditingController();
var addressController = TextEditingController();

//EDUCATION
var qualificationController = TextEditingController();
var scNameController = TextEditingController();
var ctNameController = TextEditingController();
