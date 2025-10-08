import 'package:flutter/material.dart';

class FavBtn extends StatefulWidget {
  const FavBtn({super.key});

  @override
  State<FavBtn> createState() => _FavBtnState();
}

class _FavBtnState extends State<FavBtn> {
  bool isFav = false;
  bool isPasswordShow = false;

  toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }

  showPassword() {
    setState(() {
      isPasswordShow = !isPasswordShow;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isPasswordShow = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                obscureText: !isPasswordShow,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Checkbox(
                        value: isPasswordShow,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            isPasswordShow = value ?? false;
                          });
                        }),
                    suffixIcon: IconButton(
                        onPressed: showPassword,
                        icon: Icon(isPasswordShow
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),
              IconButton(
                  onPressed: toggleFav,
                  color: isFav ? Colors.red : Colors.grey,
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    size: 100,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
