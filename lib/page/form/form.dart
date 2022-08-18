import 'package:flutter/material.dart';

void main() {
  runApp(const form());
}

class form extends StatelessWidget {
  const form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VoCo Form',
      theme: ThemeData(brightness: Brightness.dark),
      home: const FormPage(title: 'VoCo Form  Page'),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SignUpForm()),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  // final _passKey = GlobalKey<FormFieldState>();

  String _name = '';
  String _email = '';
  int _age = -1;
  String _maritalStatus = 'single';
  int _selectedGender = 0;
  int _educationlist = 0;
  // String _password = '';
  bool _termsChecked = true;

  List<DropdownMenuItem<int>> genderList = [];

  void loadGenderList() {
    genderList = [];
    genderList.add(const DropdownMenuItem(
      child: Text('Male'),
      value: 0,
    ));
    genderList.add(const DropdownMenuItem(
      child: Text('Female'),
      value: 1,
    ));
    genderList.add(const DropdownMenuItem(
      child: Text('Others'),
      value: 2,
    ));
  }

  List<DropdownMenuItem<int>> educationlist = [];

  void Educationlistvoid() {
    educationlist = [];
    educationlist.add(const DropdownMenuItem(
      child: Text('UnEducation'),
      value: 0,
    ));
    educationlist.add(const DropdownMenuItem(
      child: Text('School Education'),
      value: 1,
    ));
    educationlist.add(const DropdownMenuItem(
      child: Text('Higher Education'),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadGenderList();
    // Build a Form widget using the _formKey we created above
    return Form(
        key: _formKey,
        child: ListView(
          children: getFormWidget(),
        ));
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = [];

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: 'Enter Name', hintText: 'Name'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a name';
        } else {
          return null;
        }
      },
      onSaved: (value) {
        setState(() {
          _name = value.toString();
        });
      },
    ));

    validateEmail(String? value) {
      if (value!.isEmpty) {
        return 'Please enter mail';
      }

      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value.toString())) {
        return 'Enter Valid Email';
      } else {
        return null;
      }
    }

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: 'Enter Email', hintText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (value) {
        setState(() {
          _email = value.toString();
        });
      },
    ));

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(hintText: 'Age', labelText: 'Enter Age'),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter age';
        } else {
          return null;
        }
      },
      onSaved: (value) {
        setState(() {
          _age = int.parse(value.toString());
        });
      },
    ));

    formWidget.add(DropdownButton(
      hint: const Text('Select Gender'),
      items: genderList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = int.parse(value.toString());
        });
      },
      isExpanded: true,
    ));

    formWidget.add(Column(
      children: <Widget>[
        RadioListTile<String>(
          title: const Text('Single'),
          value: 'single',
          groupValue: _maritalStatus,
          onChanged: (value) {
            setState(() {
              _maritalStatus = value.toString();
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Married'),
          value: 'married',
          groupValue: _maritalStatus,
          onChanged: (value) {
            setState(() {
              _maritalStatus = value.toString();
            });
          },
        ),
      ],
    ));

    formWidget.add(DropdownButton(
      hint: const Text('Highest Qualification:-'),
      items: educationlist,
      value: _educationlist,
      onChanged: (value) {
        setState(() {
          _educationlist = int.parse(value.toString());
        });
      },
      isExpanded: true,
    ));

    //ye pura code password ke liye he{

    // formWidget.add(
    //   TextFormField(

    //       // key: _passKey,
    //       // obscureText: true,
    //       // decoration: const InputDecoration(
    //       //     hintText: 'Password', labelText: 'Enter Password'),
    //       // validator: (value) {
    //       //   if (value!.isEmpty) {
    //       //     return 'Please Enter password';
    //       //   } else if (value.length < 8) {
    //       //     return 'Password should be more than 8 characters';
    //       //   } else {
    //       //     return null;
    //       //   }
    //       // }
    //       ),
    // );

    // formWidget.add(
    //   TextFormField(
    //       // obscureText: true,
    //       // decoration: const InputDecoration(
    //       //     hintText: 'Confirm Password',
    //       //     labelText: 'Enter Confirm Password'),
    //       // validator: (confirmPassword) {
    //       //   if (confirmPassword != null && confirmPassword.isEmpty) {
    //       //     return 'Enter confirm password';
    //       //   }
    //       //   var password = _passKey.currentState?.value;
    //       //   if (confirmPassword != null &&
    //       //       confirmPassword.compareTo(password) != 0) {
    //       //     return 'Password mismatch';
    //       //   } else {
    //       //     return null;
    //       //   }
    //       // },
    //       // onSaved: (value) {
    //       //   setState(() {
    //       //     _password = value.toString();
    //       //   });
    //       // }
    //       ),
    // );
    //}

    formWidget.add(CheckboxListTile(
      value: _termsChecked,
      onChanged: (value) {
        setState(() {
          _termsChecked = value.toString().toLowerCase() == 'true';
        });
      },
      subtitle: !_termsChecked
          ? const Text(
              'Required',
              style: TextStyle(color: Colors.red, fontSize: 12.0),
            )
          : null,
      title: const Text(
        'I agree to the terms and condition',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));

    void onPressedSubmit() {
      if (_formKey.currentState!.validate() && _termsChecked) {
        _formKey.currentState?.save();

        print("Name " + _name);
        print("Email " + _email);
        print("Age " + _age.toString());
        switch (_selectedGender) {
          case 0:
            print("Gender Male");
            break;
          case 1:
            print("Gender Female");
            break;
          case 3:
            print("Gender Others");
            break;
        }

        switch (_educationlist) {
          case 0:
            print("UnEducation");

            break;
          case 1:
            print("School Education");
            break;
          case 3:
            print("Higher Education");
            break;
        }
        print("Marital Status " + _maritalStatus);
        // print("Password " + _password);
        print("Termschecked " + _termsChecked.toString());
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Form Submitted')));
      }
    }

    formWidget.add(ElevatedButton(
        onLongPress: () {
          Navigator.pushNamed(context, 'login');
        },
        child: const Text('fill up form'),
        onPressed: onPressedSubmit));

    return formWidget;
  }
}
