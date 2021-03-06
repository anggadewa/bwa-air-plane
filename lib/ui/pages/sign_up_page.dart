part of './pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Full Name",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'your full name...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email Address",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'your email address...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'your password...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      }

      Widget hobbyInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hobby",
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'your hobby...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              ),
            ],
          ),
        );
      }

      Widget submitButton() {
        return CustomButton(
            title: "Get Started",
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhtieColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            "Terms and Conditions",
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
