part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),

              /// Title
              Text(
                "login here",
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600,
                  color: MyColors.blackColor,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Set up your profile now to explore, connect,\nand get started easily.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: MyColors.blackColor,
                ),
              ),

              SizedBox(height: 110),

              /// Email Field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter email or phone number",
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),

              SizedBox(height: 20),

              /// Password Field
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Password", style: TextStyle(fontSize: 15.sp)),
              ),
              SizedBox(height: 8),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),

              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reset password",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: MyColors.bottonColor,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: CustomPrimaryButton(title: "login here", onTap: () {}),
              ),
              SizedBox(height: 40),

              /// Divider
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or continue with quick sign-in",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: MyColors.blackColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),

              SizedBox(height: 35),

              /// Social Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(MyAssets.appleicon, width: 28.w),
                  SizedBox(width: 45),
                  SvgPicture.asset(MyAssets.googleicon, width: 28.w),
                  SizedBox(width: 45),
                  SvgPicture.asset(MyAssets.facebookicon, width: 28.w),
                ],
              ),

              SizedBox(height: 35),

              /// Bottom Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: MyColors.blackColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        AutoRouter.of(context).push(RegisterRoute()),
                    child: Text(
                      "Sign up here",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: MyColors.bottonColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
