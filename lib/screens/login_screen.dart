import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  // Helper method to show snackbars
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: GoogleFonts.roboto()),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                SizedBox(
                  height: 320,
                  width: 350,
                  child: Image.network("https://cdn.dribbble.com/userupload/45468966/file/7f0554e04135b9f468d3e9baf0ed142d.jpg?resize=420x&vertical=center")
                ),
                const SizedBox(height: 6),
                
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Please Sign in to continue.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 32),

                const CustomTextField(
                  hintText: 'Username',
                  prefixIcon: Icons.person_outline,
                ),
                const SizedBox(height: 16),
                const CustomTextField(
                  hintText: '••••••••••',
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: AppTheme.textGrey, size: 20),
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Centering the row
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                      activeColor: const Color.fromARGB(73, 116, 118, 119),
                    ),
                    Text(
                      'Reminder me nextime',
                      style: GoogleFonts.roboto(
                        color: const Color.fromARGB(255, 76, 77, 80), 
                        fontSize: 12, 
                        
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                GestureDetector(
                  onTap: () {
                    print("Hello World!");
                    _showSnackBar("Hello World!");
                  },
                  onDoubleTap: () {
                    print("ITP107 - Mobile Application Development");
                    _showSnackBar("ITP107 - Mobile Application Development");
                  },
                  onLongPress: () {
                    
                    print("MERCADAL, NOEL E");
                    _showSnackBar("MERCADAL, NOEL E");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Click Me!',
                      style: GoogleFonts.roboto(
                        fontSize: 16, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
   
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Don't have account? ",
                    style: GoogleFonts.roboto(color: AppTheme.textGrey, fontSize: 14),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.roboto(
                          color: AppTheme.primaryColor, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}