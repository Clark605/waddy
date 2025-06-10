import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waddy/features/code_verfication/vefication_success.dart';
import 'package:waddy/shared/components/widgets.dart';

class VarficationCode extends StatefulWidget {
  const VarficationCode({super.key, required this.onCompleted});
  final ValueChanged<String> onCompleted;

  @override
  State<VarficationCode> createState() => _VarficationCodeState();
}

class _VarficationCodeState extends State<VarficationCode> {
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  bool enableButton = false;
  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onTextChanged(String value, int index) {
    if (value.length == 1) {
      if (index < 3) {
        _focusNodes[index + 1].requestFocus();
      } else {
        // All fields are filled
        String code = _controllers.map((c) => c.text).join();
        widget.onCompleted(code);
        setState(() {
          enableButton = true;
        });
      }
    }
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
      setState(() {
        enableButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: onBoardingAppBar(backarrowFunction: () {
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "We will send you a code",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins-SemiBold.tff"),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 80,
                    child: TextField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        filled: true,
                        fillColor: Color(0xffEAEAEA),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 3.0,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                              color: Colors.black12,
                              width: 0,
                            )),
                      ),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) => _onTextChanged(value, index),
                    ),
                  );
                }),
              ),
              Expanded(
                  child: SizedBox(
                height: height * 0.3,
              )),
              Row(
                children: [
                  Text(
                    "Didn’t receive an email? ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFC4A1A)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              outlineButton(
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VeficationSuccess()));
                  },
                  text: "Next",
                  height: height,
                  width: width,
                  isEnabled: enableButton),
              SizedBox(height: height * 0.02)
            ],
          ),
        ),
      ),
    );
  }
}
