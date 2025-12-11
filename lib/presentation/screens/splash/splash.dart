part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),

              /// Logo
              Image.asset(MyAssets.assetslogo, height: 110.h, width: 114.w),

              SizedBox(height: 32.h),

              /// Title
              Text(
                "Access medications\nat your fingertips",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 33.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Roboto',
                ),
              ),

              const Spacer(flex: 2),

              /// Sign Up Button (Reusable)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomPrimaryButton(
                  title: "Sign up for free",
                  onTap: () => AutoRouter.of(context).push(RegisterRoute()),
                ),
              ),

              SizedBox(height: 15.h),

              /// Login Button (Reusable)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomOutlinedButton(
                  title: "Log in",
                  onTap: () => AutoRouter.of(context).push(LoginRoute()),
                ),
              ),

              const Spacer(),

              /// Terms
              Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "By continuing you agree to our ",
                    style: TextStyle(
                      color: MyColors.blackColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                    children: [
                      TextSpan(
                        text: "Privacy policy",
                        style: TextStyle(
                          color: MyColors.bottonColor,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      const TextSpan(text: " and "),
                      TextSpan(
                        text: "Terms & Condition",
                        style: TextStyle(
                          color: MyColors.bottonColor,
                          fontFamily: 'Roboto',
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
    );
  }
}
