import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lilac_test/controller/login_controller.dart';
import 'package:lilac_test/utils/extentions.dart';
import 'package:lilac_test/view/routes/app_router.gr.dart';
import 'package:lilac_test/view/theme/colors.dart';
import 'package:lilac_test/view/widgets/default_button.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginController = ref.watch(loginControllerProvider.notifier);
    ref.listen(
      loginResponseProvider,
      (previous, next) {
        print(">>>>>>>>>> ${next}");
        next.when(data: (data) {

        }, error: (error, stackTrace) {
          if (next.isLoading == false) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.toString()),
              ),
            );
          }
        }, loading: () {

        },);

      },
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                65.sBH,
                Image.asset("assets/images/logo.png"),
                50.sBH,
                Form(
                  key: loginFormKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Email",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      6.sBH,
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        validator: (value) =>
                            value == null || value == "" ? "This field is required" : null,
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          prefixIcon: Image.asset("assets/images/email_icon.png"),
                        ),
                      ),
                      16.sBH,
                      const Text(
                        "Password",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      6.sBH,
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        validator: (value) =>
                            value == null || value == "" ? "This field is required" : null,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          prefixIcon: Image.asset("assets/images/lock_icon.png"),
                        ),
                      ),
                      8.sBH,
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: blueColor,
                          ),
                          onPressed: () {
                            // forgot password logic
                          },
                          child: const Text("Forgot Password?"),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                DefaultButton(
                  onPressed: () async {
                    if (loginFormKey.currentState?.validate() == true) {
                      await loginController.login(
                        context: context,
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                    }
                  },
                  text: "Login",
                ),
                16.sBH,
                InkWell(
                  onTap: () {
                    // navigation to registration screen
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: blackColor,
                          ),
                        ),
                        TextSpan(
                          text: "Register",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: blueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
