import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/otp/widgets/otp_input.dart';
import 'package:flutter_ecommerce/utils/extensions/Spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpForm extends StatefulWidget {
  EdgeInsets? contentPadding;
  final Function()? onOtpCodeChanged;

  OtpForm({
    super.key,
    required this.contentPadding,
    this.onOtpCodeChanged,
  });

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  String otpCode = '';

  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final TextEditingController _controller3 = TextEditingController();

  final TextEditingController _controller4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller4.addListener(_onOtpCodeChanged);
  }

  @override
  void dispose() {
    // Dispose the controllers to avoid memory leaks
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OtpInput(
          controller: _controller1,
        ),
        horizontalSpace(16),
        OtpInput(
          controller: _controller2,
        ),
        horizontalSpace(16),
        OtpInput(controller: _controller3),
        horizontalSpace(16),
        OtpInput(
          controller: _controller4,
        ),
      ],
    );
  }

  void _onOtpCodeChanged() {
    // If the last OTP input field is not empty, fire the event
    if (_controller4.text.isNotEmpty) {
      widget.onOtpCodeChanged?.call();
    }
  }
}
