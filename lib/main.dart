import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const RestauApp());
}

class RestauApp extends StatelessWidget {
  const RestauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restau App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey.shade50,
      ),
      home: const StartPage(),
    );
  }
}

// ============================================================
// 🚀 START PAGE
// ============================================================
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/photo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 35),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 18,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/photo2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Eat",
                          style: TextStyle(
                            fontSize: 52,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF003B2F),
                            letterSpacing: -1,
                          ),
                        ),
                        TextSpan(
                          text: "OS",
                          style: TextStyle(
                            fontSize: 52,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFF9800),
                            letterSpacing: -1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Smart Restaurant Application",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 28),
                  const Text(
                    "Delicious Food,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFFF9800),
                    ),
                  ),
                  const Text(
                    "Better Experience",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF003B2F),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 2,
                        color: const Color(0xFF57C84D),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.restaurant_menu,
                        color: Color(0xFFFF9800),
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 2,
                        color: const Color(0xFF57C84D),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    "For food lovers and restaurant\nowners – all in one place.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF666666),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 28),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F7F2),
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.room_service_outlined,
                                  color: Color(0xFF57C84D),
                                  size: 40,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                "For Customers",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF003B2F),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "Order your favorite food\nquickly and easily.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF666666),
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF7EF),
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.storefront_outlined,
                                  color: Color(0xFFFF9800),
                                  size: 40,
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                "For Restaurants",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF003B2F),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "Manage your restaurant\nand grow your business.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF666666),
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF57C84D),
                        foregroundColor: Colors.white,
                        elevation: 8,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 14),
                          Icon(Icons.arrow_forward_rounded, size: 28),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// 🔐 LOGIN PAGE
// ============================================================
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;
  bool _isLoading = false;
  String? _errorMessage;
  bool _rememberMe = false;

  // ✅ UPDATED - Railway URL
  final String apiUrl = "https://web-production-90b17.up.railway.app/";

  Future<void> _login() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      setState(() => _errorMessage = "All fields required");
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final response = await http.post(
        Uri.parse("${apiUrl}login.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "email": _emailController.text,
          "password": _passwordController.text,
        }),
      );

      final data = json.decode(response.body);

      if (data["success"] == true) {
        final user = data["user"];

        if (user["role"] == "admin") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const AdminPage()),
          );
        } else if (user["role"] == "owner") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => OwnerHomePage(
                ownerId: user["id"],
                ownerName: user["username"],
                email: user["email"],
                apiUrl: apiUrl,
              ),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => ETOSWelcomePage(
                role: user["role"],
                username: user["username"],
                email: user["email"],
                userId: user["id"],
                apiUrl: apiUrl,
              ),
            ),
          );
        }
      } else {
        setState(() => _errorMessage = data["message"] ?? "Login failed");
      }
    } catch (e) {
      setState(() => _errorMessage = "Connection error: ${e.toString()}");
    }

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Welcom.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.4),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/photo2.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: const Color(0xFF2E7D32),
                                child: const Icon(
                                  Icons.restaurant,
                                  size: 65,
                                  color: Colors.white,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "👋 Welcome!",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Login to continue",
                        style: TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF2E7D32),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E7D32),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 16),
                              TextField(
                                controller: _passwordController,
                                obscureText: !_showPassword,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    color: Color(0xFF2E7D32),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _showPassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Color(0xFF888888),
                                    ),
                                    onPressed: () => setState(
                                      () => _showPassword = !_showPassword,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E7D32),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: Checkbox(
                                          value: _rememberMe,
                                          onChanged: (value) {
                                            setState(() {
                                              _rememberMe = value ?? false;
                                            });
                                          },
                                          activeColor: const Color(0xFF2E7D32),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        "Remember me",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF666666),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "Reset password link sent to your email",
                                          ),
                                          backgroundColor: Color(0xFF2E7D32),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF2E7D32),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (_errorMessage != null) ...[
                                const SizedBox(height: 12),
                                Text(
                                  _errorMessage!,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                              const SizedBox(height: 25),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: _isLoading ? null : _login,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF2E7D32),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: _isLoading
                                      ? const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account? ",
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => const SignUpPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Color(0xFF2E7D32),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "🍽️ Delicious Food, Better Experience 🍽️",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                            height: 1.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// 📝 SIGN UP PAGE
// ============================================================
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  bool _showPassword = false;
  bool _showConfirm = false;
  String _selectedRole = "";
  bool _isLoading = false;
  String? _errorMessage;

  // ✅ UPDATED - Railway URL
  final String apiUrl = "https://web-production-90b17.up.railway.app/";

  void _showRolePopup() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Selection required"),
        content: const Text("Please select Customer or Owner"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  Future<void> _register() async {
    setState(() {
      _errorMessage = null;
    });

    if (_usernameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty) {
      setState(() => _errorMessage = "All fields required");
      return;
    }

    if (!_emailController.text.contains("@gmail.com")) {
      setState(() => _errorMessage = "Email must be @gmail.com");
      return;
    }

    if (_passwordController.text.length <= 4) {
      setState(() => _errorMessage = "Password must be > 4 characters");
      return;
    }

    if (_confirmController.text != _passwordController.text) {
      setState(() => _errorMessage = "Passwords do not match");
      return;
    }

    if (_selectedRole.isEmpty) {
      _showRolePopup();
      return;
    }

    setState(() => _isLoading = true);

    try {
      final response = await http.post(
        Uri.parse("${apiUrl}register.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "username": _usernameController.text,
          "email": _emailController.text,
          "password": _passwordController.text,
          "role": _selectedRole,
        }),
      );

      final data = json.decode(response.body);

      if (data["success"] == true) {
        if (_selectedRole == "owner") {
          _showPendingDialog();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Account created! Please login."),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context);
        }
      } else {
        setState(
          () => _errorMessage = data["message"] ?? "Registration failed",
        );
      }
    } catch (e) {
      setState(() => _errorMessage = "Connection error: ${e.toString()}");
    }

    setState(() => _isLoading = false);
  }

  void _showPendingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Account Pending"),
        content: const Text(
          "Your owner account is pending admin approval. You will be notified when approved.",
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Sign.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.88),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Sign up to get started",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF888888),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              TextField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.person_outline,
                                    color: Color(0xFF2E7D32),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E7D32),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF2E7D32),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E7D32),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 16),
                              TextField(
                                controller: _passwordController,
                                obscureText: !_showPassword,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    color: Color(0xFF2E7D32),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _showPassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Color(0xFF888888),
                                    ),
                                    onPressed: () => setState(
                                      () => _showPassword = !_showPassword,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E7D32),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextField(
                                controller: _confirmController,
                                obscureText: !_showConfirm,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    color: Color(0xFF2E7D32),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _showConfirm
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Color(0xFF888888),
                                    ),
                                    onPressed: () => setState(
                                      () => _showConfirm = !_showConfirm,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF2E7D32),
                                      width: 2,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(child: _roleButton("Customer")),
                                  const SizedBox(width: 12),
                                  Expanded(child: _roleButton("Owner")),
                                ],
                              ),
                              if (_errorMessage != null) ...[
                                const SizedBox(height: 12),
                                Text(
                                  _errorMessage!,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                              const SizedBox(height: 25),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: _isLoading ? null : _register,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF2E7D32),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: _isLoading
                                      ? const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account? ",
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Color(0xFF2E7D32),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
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
          ),
        ),
      ),
    );
  }

  Widget _roleButton(String text) {
    bool isSelected = _selectedRole == text.toLowerCase();
    return OutlinedButton(
      onPressed: () => setState(() => _selectedRole = text.toLowerCase()),
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected
            ? const Color(0xFF2E7D32).withOpacity(0.1)
            : Colors.white,
        side: BorderSide(
          color: isSelected ? const Color(0xFF2E7D32) : Colors.grey.shade400,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? const Color(0xFF2E7D32) : Colors.grey.shade600,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

// ============================================================
// 🌐 CUSTOMER INTERFACE
// ============================================================

// CART PAGE
class ETOSCartPage extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;
  final Function(List<Map<String, dynamic>>) updateCartCallback;
  final int? userId;
  final String? apiUrl;

  const ETOSCartPage({
    super.key,
    required this.cartItems,
    required this.updateCartCallback,
    this.userId,
    this.apiUrl,
  });

  @override
  State<ETOSCartPage> createState() => _ETOSCartPageState();
}

class _ETOSCartPageState extends State<ETOSCartPage> {
  String selectedPaymentMethod = "Cash on Delivery";
  String specialInstructions = "";

  final List<String> paymentMethods = [
    "Cash on Delivery",
    "Credit Card",
    "CP+ Wallet",
  ];

  double get subtotal {
    double total = 0;
    for (var item in widget.cartItems) {
      total += (item["price"] * item["qty"]) as double;
    }
    return total;
  }

  double get deliveryFee {
    if (subtotal > 1000) return 0;
    if (subtotal > 500) return 2.5;
    return 5;
  }

  double get total {
    return subtotal + deliveryFee;
  }

  void _updateQuantity(int index, int newQty) {
    if (newQty <= 0) {
      widget.cartItems.removeAt(index);
    } else {
      widget.cartItems[index]["qty"] = newQty;
    }
    widget.updateCartCallback(widget.cartItems);
    setState(() {});
  }

  void _removeItem(int index) {
    widget.cartItems.removeAt(index);
    widget.updateCartCallback(widget.cartItems);
    setState(() {});
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Item removed"),
        backgroundColor: Colors.orange,
      ),
    );
  }

  void _clearCart() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Clear Cart"),
        content: const Text("Remove all items?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              widget.cartItems.clear();
              widget.updateCartCallback(widget.cartItems);
              setState(() {});
              Navigator.pop(context);
            },
            child: const Text("Clear All", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _confirmOrder() {
    if (widget.cartItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Cart is empty!"),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Icon(Icons.check_circle, color: Colors.green, size: 50),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Order Confirmed!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                "Total: ${total.toStringAsFixed(0)} DA",
                style: const TextStyle(fontSize: 16),
              ),
              Text("Payment: $selectedPaymentMethod"),
              if (specialInstructions.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Note: $specialInstructions",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(dialogContext).pop();

                String itemsText = "";
                for (var item in widget.cartItems) {
                  itemsText += "${item["name"]} x${item["qty"]}, ";
                }
                if (itemsText.endsWith(", ")) {
                  itemsText = itemsText.substring(0, itemsText.length - 2);
                }

                int restaurantId = widget.cartItems[0]["restaurant_id"] ?? 1;

                try {
                  final response = await http.post(
                    Uri.parse("${widget.apiUrl}customer/add_order.php"),
                    headers: {"Content-Type": "application/json"},
                    body: json.encode({
                      "customer_id": widget.userId,
                      "restaurant_id": restaurantId,
                      "items": itemsText,
                      "total": total,
                    }),
                  );

                  final data = json.decode(response.body);

                  if (data["success"] == true) {
                    widget.cartItems.clear();
                    widget.updateCartCallback(widget.cartItems);
                    setState(() {});

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("✅ Order placed successfully!"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "❌ Error: ${data["message"] ?? "Unknown"}",
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("❌ Connection error: ${e.toString()}"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          if (widget.cartItems.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep, color: Colors.red),
              onPressed: _clearCart,
            ),
        ],
      ),
      body: widget.cartItems.isEmpty ? _emptyCart() : _cartWithItems(),
    );
  }

  Widget _cartWithItems() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          alignment: Alignment.centerLeft,
          child: Text(
            "${widget.cartItems.length} ${widget.cartItems.length == 1 ? 'item' : 'items'}",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: widget.cartItems.length,
            itemBuilder: (context, index) {
              final item = widget.cartItems[index];
              return _cartItem(item, index);
            },
          ),
        ),
        _orderSummary(),
      ],
    );
  }

  Widget _cartItem(Map<String, dynamic> item, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.08), blurRadius: 8),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              item["image"] ?? "https://picsum.photos/60",
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 60,
                height: 60,
                color: Colors.brown.shade100,
                child: const Icon(Icons.fastfood, color: Colors.brown),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["name"],
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "${item["price"]} DA",
                  style: TextStyle(color: Colors.brown.shade700),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    _qtyButton(
                      Icons.remove,
                      Colors.red,
                      () => _updateQuantity(index, item["qty"] - 1),
                    ),
                    Container(
                      width: 35,
                      alignment: Alignment.center,
                      child: Text("${item["qty"]}"),
                    ),
                    _qtyButton(
                      Icons.add,
                      Colors.green,
                      () => _updateQuantity(index, item["qty"] + 1),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "${(item["price"] * item["qty"]).toInt()} DA",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () => _removeItem(index),
                child: const Icon(
                  Icons.delete_outline,
                  size: 18,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _qtyButton(IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon, size: 16, color: color),
      ),
    );
  }

  Widget _orderSummary() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10),
        ],
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Add instructions...",
              prefixIcon: Icon(Icons.note_add, color: Colors.brown),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey.shade50,
            ),
            onChanged: (v) => specialInstructions = v,
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedPaymentMethod,
                isExpanded: true,
                items: paymentMethods
                    .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                    .toList(),
                onChanged: (v) => setState(() => selectedPaymentMethod = v!),
              ),
            ),
          ),
          const SizedBox(height: 16),
          _priceRow("Subtotal", "${subtotal.toStringAsFixed(0)} DA"),
          _priceRow("Delivery", "${deliveryFee.toStringAsFixed(0)} DA"),
          const Divider(),
          _priceRow("Total", "${total.toStringAsFixed(0)} DA", isTotal: true),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: _confirmOrder,
              child: const Text(
                "Confirm Order",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _priceRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 16 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyCart() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.brown.shade50,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              size: 60,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Your cart is empty",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Add items from restaurants",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// WELCOME PAGE
// ============================================================
class ETOSWelcomePage extends StatefulWidget {
  final String role;
  final String? username;
  final String? email;
  final int? userId;
  final String? apiUrl;

  const ETOSWelcomePage({
    super.key,
    this.role = "customer",
    this.username,
    this.email,
    this.userId,
    this.apiUrl,
  });

  @override
  State<ETOSWelcomePage> createState() => _ETOSWelcomePageState();
}

class _ETOSWelcomePageState extends State<ETOSWelcomePage> {
  int currentIndex = 0;
  bool darkMode = false;
  bool notification = true;
  String language = "EN";

  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredRestaurants = [];
  int selectedCategory = 0;

  List<Map<String, dynamic>> cartItems = [];

  Map<String, dynamic> _userProfile = {};
  bool _isLoadingProfile = true;
  String? _profileError;

  final Color primaryGreen = const Color(0xFF0F5C4A);
  final Color lightGreen = const Color(0xFF58D44D);
  final Color orangeColor = const Color(0xFFFF9800);

  @override
  void initState() {
    super.initState();
    filteredRestaurants = restaurants;
    _loadRestaurants();
    _loadFavorites();
    _loadUserProfile();
  }

  Future<void> _loadUserProfile() async {
    if (widget.apiUrl == null || widget.userId == null) {
      setState(() {
        _isLoadingProfile = false;
        _userProfile = {
          "username": widget.username,
          "email": widget.email,
          "phone": "",
          "address": "",
        };
      });
      return;
    }

    setState(() => _isLoadingProfile = true);

    try {
      final response = await http
          .get(
            Uri.parse(
              "${widget.apiUrl}customer/get_profile.php?customer_id=${widget.userId}",
            ),
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data["success"] == true) {
          setState(() {
            _userProfile = data["profile"];
            _profileError = null;
          });
        } else {
          setState(() {
            _userProfile = {
              "username": widget.username,
              "email": widget.email,
              "phone": "",
              "address": "",
            };
            _profileError = data["message"] ?? "Failed to load profile";
          });
        }
      } else {
        setState(() {
          _userProfile = {
            "username": widget.username,
            "email": widget.email,
            "phone": "",
            "address": "",
          };
          _profileError = "Server error: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        _userProfile = {
          "username": widget.username,
          "email": widget.email,
          "phone": "",
          "address": "",
        };
        _profileError = "Connection error: ${e.toString()}";
      });
    }

    setState(() => _isLoadingProfile = false);
  }

  Future<void> _updateUserProfile(Map<String, dynamic> updatedData) async {
    if (widget.apiUrl == null || widget.userId == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("❌ Cannot connect to server"),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    try {
      final response = await http
          .post(
            Uri.parse("${widget.apiUrl}customer/update_profile.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({
              "customer_id": widget.userId.toString(),
              "username": updatedData["username"] ?? "",
              "email": updatedData["email"] ?? "",
              "phone": updatedData["phone"] ?? "",
              "address": updatedData["address"] ?? "",
            }),
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data["success"] == true) {
          setState(() {
            _userProfile = {..._userProfile, ...updatedData};
          });
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("✅ Profile updated successfully!"),
                backgroundColor: Colors.green,
              ),
            );
          }
        } else {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(data["message"] ?? "❌ Update failed"),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("❌ Error: ${e.toString()}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _changeUserPassword(
    String oldPassword,
    String newPassword,
  ) async {
    if (widget.apiUrl == null || widget.userId == null) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("❌ Cannot connect to server"),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    try {
      final response = await http
          .post(
            Uri.parse("${widget.apiUrl}customer/change_password.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({
              "customer_id": widget.userId.toString(),
              "old_password": oldPassword,
              "new_password": newPassword,
            }),
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (mounted) {
          if (data["success"] == true) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("✅ Password changed successfully!"),
                backgroundColor: Colors.green,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(data["message"] ?? "❌ Failed to change password"),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("❌ Server error: ${response.statusCode}"),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("❌ Connection error: ${e.toString()}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _loadRestaurants() async {
    if (widget.apiUrl != null) {
      try {
        final response = await http.get(
          Uri.parse("${widget.apiUrl}customer/get_restaurants.php"),
        );
        final data = json.decode(response.body);
        if (data is List) {
          setState(() {
            restaurants = List<Map<String, dynamic>>.from(data);
            filteredRestaurants = List.from(restaurants);
          });
        }
      } catch (e) {
        print("Error loading restaurants: $e");
      }
    }
  }

  Future<void> _loadFavorites() async {
    if (widget.apiUrl != null && widget.userId != null) {
      try {
        final response = await http.get(
          Uri.parse(
            "${widget.apiUrl}customer/get_favorites.php?customer_id=${widget.userId}",
          ),
        );
        final data = json.decode(response.body);
        if (data is List) {
          for (var fav in data) {
            int index = restaurants.indexWhere((r) => r["id"] == fav["id"]);
            if (index != -1) {
              restaurants[index]["fav"] = true;
            }
          }
          setState(() {});
        }
      } catch (e) {
        print("Error loading favorites: $e");
      }
    }
  }

  Future<void> _toggleFavorite(Map<String, dynamic> restaurant) async {
    if (widget.apiUrl == null || widget.userId == null) return;

    try {
      final response = await http.post(
        Uri.parse("${widget.apiUrl}customer/toggle_favorite.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "customer_id": widget.userId,
          "restaurant_id": restaurant["id"],
        }),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() {
          restaurant["fav"] = !(restaurant["fav"] ?? false);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              data["action"] == "added"
                  ? "Added to favorites"
                  : "Removed from favorites",
            ),
          ),
        );
      }
    } catch (e) {
      print("Error toggling favorite: $e");
    }
  }

  void filterRestaurants() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredRestaurants = restaurants.where((r) {
        bool matchSearch = r["name"].toLowerCase().contains(query);
        bool matchCategory = selectedCategory == 0;
        return matchSearch && matchCategory;
      }).toList();
    });
  }

  List<Map<String, dynamic>> restaurants = [];

  Widget homePage() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryItem("All🌍", 0),
                categoryItem("Fast Food🍔", 1),
                categoryItem("Pizza🍕", 2),
                categoryItem("Burgers🍔", 3),
                categoryItem("Desserts🍰", 4),
                categoryItem("Drinks🥤", 5),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Restaurants near you",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredRestaurants.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, i) {
              var r = filteredRestaurants[i];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ETOSRestaurantDetailsPage(
                        restaurant: r,
                        addToCartCallback: (Map<String, dynamic> item) {
                          setState(() {
                            bool found = false;
                            for (var cartItem in cartItems) {
                              if (cartItem["name"] == item["name"]) {
                                cartItem["qty"] =
                                    (cartItem["qty"] as int) +
                                    (item["qty"] as int);
                                found = true;
                                break;
                              }
                            }
                            if (!found) {
                              cartItems.add(item);
                            }
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Added to cart: ${item["name"]}"),
                            ),
                          );
                        },
                        customerId: widget.userId,
                        apiUrl: widget.apiUrl,
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            child: Image.network(
                              r["image"] ??
                                  "https://picsum.photos/200?random=$i",
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(
                                height: 120,
                                color: Colors.grey.shade300,
                                child: const Icon(Icons.restaurant, size: 50),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: GestureDetector(
                              onTap: () => _toggleFavorite(r),
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  (r["fav"] == true)
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  size: 18,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              r["name"],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "⭐ ${r["rating"] ?? 4.5}",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget categoryItem(String title, int i) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = i;
        });
        filterRestaurants();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selectedCategory == i ? primaryGreen : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: selectedCategory == i ? Colors.white : Colors.black87,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget favoritePage() {
    var favs = restaurants.where((r) => r["fav"] == true).toList();
    if (favs.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 80, color: Colors.grey),
            SizedBox(height: 10),
            Text("No favorites yet", style: TextStyle(fontSize: 18)),
          ],
        ),
      );
    }
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: favs.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, i) {
        var r = favs[i];
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ETOSRestaurantDetailsPage(
                          restaurant: r,
                          addToCartCallback: (Map<String, dynamic> item) {
                            setState(() {
                              bool found = false;
                              for (var cartItem in cartItems) {
                                if (cartItem["name"] == item["name"]) {
                                  cartItem["qty"] =
                                      (cartItem["qty"] as int) +
                                      (item["qty"] as int);
                                  found = true;
                                  break;
                                }
                              }
                              if (!found) cartItems.add(item);
                            });
                          },
                          customerId: widget.userId,
                          apiUrl: widget.apiUrl,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          r["image"] ?? "https://picsum.photos/200",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      r["name"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("⭐ ${r["rating"]}"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget profilePage() {
    String username = _userProfile["username"] ?? widget.username ?? "User";
    String email = _userProfile["email"] ?? widget.email ?? "";
    String phone = _userProfile["phone"] ?? "";
    String address = _userProfile["address"] ?? "";
    String firstLetter = username.isNotEmpty ? username[0].toUpperCase() : "U";

    int favoriteCount = restaurants
        .where((r) => r["fav"] == true)
        .toList()
        .length;

    if (_isLoadingProfile) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Color(0xFF0F5C4A)),
            SizedBox(height: 16),
            Text(
              "Loading profile...",
              style: TextStyle(color: Color(0xFF0F5C4A)),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [primaryGreen, primaryGreen.withOpacity(0.7)],
                  ),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 56,
                        backgroundColor: primaryGreen.withOpacity(0.1),
                        child: Text(
                          firstLetter,
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: primaryGreen,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Text(
            username,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: primaryGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "✨ Food Lover ✨",
              style: TextStyle(
                fontSize: 12,
                color: primaryGreen,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.email, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                email,
                style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
              ),
            ],
          ),
          if (phone.isNotEmpty) ...[
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  phone,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ],
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                _buildStatCard(
                  "Favorite",
                  favoriteCount.toString(),
                  Icons.favorite,
                  Colors.red,
                ),
                const SizedBox(width: 12),
                _buildStatCard("Settings", "0", Icons.settings, Colors.grey),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: darkMode ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.person, color: primaryGreen, size: 22),
                      const SizedBox(width: 12),
                      Text(
                        "Personal Information",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: primaryGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                _buildInfoRow(Icons.email_outlined, "Email", email),
                _buildInfoRow(
                  Icons.phone_outlined,
                  "Phone",
                  phone.isEmpty ? "Not set" : phone,
                ),
                _buildInfoRow(
                  Icons.location_on_outlined,
                  "Address",
                  address.isEmpty ? "Not set" : address,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ElevatedButton.icon(
                    onPressed: () =>
                        _showEditProfileDialog(username, email, phone, address),
                    icon: const Icon(Icons.edit, size: 18),
                    label: const Text("Edit Profile"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryGreen,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: darkMode ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.lock, color: Colors.orange, size: 22),
                      const SizedBox(width: 12),
                      Text(
                        "Security",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                _buildMenuTile(
                  icon: Icons.lock_outline,
                  title: "Change Password",
                  subtitle: "Secure your account",
                  onTap: _showChangePasswordDialog,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: OutlinedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Logout"),
                    content: const Text("Are you sure you want to logout?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const StartPage(),
                            ),
                            (route) => false,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text("Logout"),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.logout, color: Colors.red),
              label: const Text("Logout", style: TextStyle(color: Colors.red)),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.1), color.withOpacity(0.05)],
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: primaryGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: primaryGreen, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.orange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.orange, size: 20),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
      ),
      trailing: const Icon(Icons.chevron_right, size: 20),
      onTap: onTap,
    );
  }

  void _showEditProfileDialog(
    String currentName,
    String currentEmail,
    String currentPhone,
    String currentAddress,
  ) {
    final nameCtrl = TextEditingController(text: currentName);
    final emailCtrl = TextEditingController(text: currentEmail);
    final phoneCtrl = TextEditingController(text: currentPhone);
    final addressCtrl = TextEditingController(text: currentAddress);

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text("Edit Profile"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameCtrl,
                decoration: const InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: emailCtrl,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: phoneCtrl,
                decoration: const InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: addressCtrl,
                decoration: const InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(dialogContext);
                await _updateUserProfile({
                  "username": nameCtrl.text.trim(),
                  "email": emailCtrl.text.trim(),
                  "phone": phoneCtrl.text.trim(),
                  "address": addressCtrl.text.trim(),
                });
                await _loadUserProfile();
              },
              style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  void _showChangePasswordDialog() {
    final oldPassCtrl = TextEditingController();
    final newPassCtrl = TextEditingController();
    final confirmPassCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Change Password"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: oldPassCtrl,
              decoration: const InputDecoration(
                labelText: "Current Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: newPassCtrl,
              decoration: const InputDecoration(
                labelText: "New Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: confirmPassCtrl,
              decoration: const InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              if (newPassCtrl.text != confirmPassCtrl.text) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Passwords don't match"),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              if (newPassCtrl.text.length < 4) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Password must be at least 4 characters"),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              Navigator.pop(context);
              _changeUserPassword(oldPassCtrl.text, newPassCtrl.text);
            },
            style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
            child: const Text("Update"),
          ),
        ],
      ),
    );
  }

  List<Widget> pages() => [
    homePage(),
    ETOSCartPage(
      cartItems: cartItems,
      updateCartCallback: (updatedCart) {
        setState(() {
          cartItems = updatedCart;
        });
      },
      userId: widget.userId,
      apiUrl: widget.apiUrl,
    ),
    favoritePage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: darkMode ? Brightness.dark : Brightness.light,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/photo3.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              if (currentIndex == 0)
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 20,
                    right: 20,
                    bottom: 15,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: searchController,
                        onChanged: (_) => filterRestaurants(),
                        decoration: InputDecoration(
                          hintText: "🔍 Search restaurants...",
                          prefixIcon: Icon(Icons.search, color: primaryGreen),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(child: pages()[currentIndex]),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          selectedItemColor: primaryGreen,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  const Icon(Icons.shopping_cart),
                  if (cartItems.isNotEmpty)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          "${cartItems.length}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              label: "Cart",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// RESTAURANT DETAILS PAGE
// ============================================================
class ETOSRestaurantDetailsPage extends StatefulWidget {
  final Map<String, dynamic> restaurant;
  final Function(Map<String, dynamic>) addToCartCallback;
  final int? customerId;
  final String? apiUrl;

  const ETOSRestaurantDetailsPage({
    super.key,
    required this.restaurant,
    required this.addToCartCallback,
    this.customerId,
    this.apiUrl,
  });

  @override
  State<ETOSRestaurantDetailsPage> createState() =>
      _ETOSRestaurantDetailsPageState();
}

class _ETOSRestaurantDetailsPageState extends State<ETOSRestaurantDetailsPage> {
  int stars = 0;
  TextEditingController comment = TextEditingController();
  List<Map<String, dynamic>> menu = [];

  DateTime? bookingDate;
  TimeOfDay? bookingTime;
  String tableType = "Indoor";
  int people = 1;

  List<Map<String, dynamic>> reviews = [];
  bool _isLoading = true;

  final Color primaryGreen = const Color(0xFF0F5C4A);
  final Color lightGreen = const Color(0xFF58D44D);
  final Color orangeColor = const Color(0xFFFF9800);

  @override
  void initState() {
    super.initState();
    _loadMenu();
    _loadReviews();
  }

  double _parsePrice(dynamic price) {
    if (price == null) return 0;
    if (price is double) return price;
    if (price is int) return price.toDouble();
    if (price is String) return double.tryParse(price) ?? 0;
    return 0;
  }

  Future<void> _loadMenu() async {
    setState(() => _isLoading = true);

    try {
      if (widget.apiUrl != null && widget.restaurant["id"] != null) {
        final response = await http
            .get(
              Uri.parse(
                "${widget.apiUrl}customer/get_menu.php?restaurant_id=${widget.restaurant["id"]}",
              ),
            )
            .timeout(const Duration(seconds: 5));

        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          if (data is List && data.isNotEmpty) {
            setState(() {
              menu = List<Map<String, dynamic>>.from(
                data.map(
                  (item) => {
                    "id": item["id"],
                    "name": item["name"].toString(),
                    "price": _parsePrice(item["price"]),
                    "image": item["image"]?.toString() ?? "",
                    "qty": 0,
                  },
                ),
              );
            });
            setState(() => _isLoading = false);
            return;
          }
        }
      }
    } catch (e) {
      print("Error loading menu: $e");
    }

    setState(() {
      menu = [
        {
          "id": 1,
          "name": "Margherita Pizza",
          "price": 1200.0,
          "image": "",
          "qty": 0,
        },
        {
          "id": 2,
          "name": "Classic Burger",
          "price": 800.0,
          "image": "",
          "qty": 0,
        },
        {
          "id": 3,
          "name": "Caesar Salad",
          "price": 600.0,
          "image": "",
          "qty": 0,
        },
        {
          "id": 4,
          "name": "Pasta Carbonara",
          "price": 950.0,
          "image": "",
          "qty": 0,
        },
      ];
      _isLoading = false;
    });
  }

  Future<void> _loadReviews() async {
    if (widget.apiUrl == null) return;
    try {
      final response = await http.get(
        Uri.parse(
          "${widget.apiUrl}customer/get_reviews.php?restaurant_id=${widget.restaurant["id"]}",
        ),
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data is List) {
          setState(() => reviews = List<Map<String, dynamic>>.from(data));
        }
      }
    } catch (e) {
      print("Error loading reviews: $e");
    }
  }

  void _addToCart() {
    List<Map<String, dynamic>> selectedItems = menu
        .where((item) => (item["qty"] as int) > 0)
        .toList();

    if (selectedItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select at least one item"),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    for (var item in selectedItems) {
      widget.addToCartCallback({
        "id": item["id"],
        "name": item["name"],
        "price": item["price"],
        "qty": item["qty"],
        "image": item["image"]?.toString() ?? "https://picsum.photos/70",
        "restaurant_id": widget.restaurant["id"],
      });
    }

    setState(() {
      for (var item in menu) {
        item["qty"] = 0;
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("✅ ${selectedItems.length} item(s) added to cart"),
        backgroundColor: primaryGreen,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _showMenuSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => StatefulBuilder(
        builder: (context, setStateSheet) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "📋 Menu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ...menu
                    .map(
                      (item) => ListTile(
                        leading: Icon(Icons.fastfood, color: primaryGreen),
                        title: Text(
                          item["name"],
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "${(item["price"] as double).toInt()} DA",
                          style: TextStyle(color: primaryGreen),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setStateSheet(() {
                                  if (item["qty"] > 0) item["qty"]--;
                                });
                                setState(() {});
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.red.shade50,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 16,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "${item["qty"]}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setStateSheet(() {
                                  item["qty"]++;
                                });
                                setState(() {});
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Close", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showBookingDialog() {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text("📅 Book a Table"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.calendar_today, color: primaryGreen),
                  title: Text(
                    bookingDate == null
                        ? "Select Date"
                        : "${bookingDate!.day}/${bookingDate!.month}/${bookingDate!.year}",
                  ),
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 30)),
                    );
                    if (date != null) {
                      setStateDialog(() => bookingDate = date);
                      setState(() {});
                    }
                  },
                ),
                ListTile(
                  leading: Icon(Icons.access_time, color: primaryGreen),
                  title: Text(
                    bookingTime == null
                        ? "Select Time"
                        : bookingTime!.format(context),
                  ),
                  onTap: () async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (time != null) {
                      setStateDialog(() => bookingTime = time);
                      setState(() {});
                    }
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people, color: primaryGreen),
                  title: Text("$people guests"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () => setStateDialog(
                          () => people = people > 1 ? people - 1 : 1,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () => setStateDialog(() => people++),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (bookingDate != null && bookingTime != null) {
                    try {
                      final response = await http.post(
                        Uri.parse("${widget.apiUrl}customer/add_booking.php"),
                        headers: {"Content-Type": "application/json"},
                        body: json.encode({
                          "customer_id": widget.customerId,
                          "restaurant_id": widget.restaurant["id"],
                          "date":
                              "${bookingDate!.year}-${bookingDate!.month}-${bookingDate!.day}",
                          "time":
                              "${bookingTime!.hour}:${bookingTime!.minute}:00",
                          "guests": people,
                        }),
                      );
                      final data = json.decode(response.body);
                      if (data["success"] == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("🎉 Booking confirmed!"),
                            backgroundColor: primaryGreen,
                          ),
                        );
                        Navigator.pop(context);
                      }
                    } catch (e) {
                      print("Error booking: $e");
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please select date and time"),
                        backgroundColor: Colors.orange,
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
                child: const Text("Confirm"),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _submitReview() async {
    if (stars == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please select a rating"),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    setState(() {
      reviews.insert(0, {
        "customer_name": "You",
        "rating": stars,
        "comment": comment.text,
      });
      stars = 0;
      comment.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("⭐ Review submitted!"),
        backgroundColor: primaryGreen,
      ),
    );
  }

  Widget _actionButton(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: primaryGreen.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 28, color: primaryGreen),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: primaryGreen,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurant["name"]),
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                    widget.restaurant["image"] ?? "https://picsum.photos/400",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      height: 200,
                      color: primaryGreen.withOpacity(0.2),
                      child: Icon(
                        Icons.restaurant,
                        size: 80,
                        color: primaryGreen,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.restaurant["name"],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: primaryGreen,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text("⭐ ${widget.restaurant["rating"] ?? 4.5}"),
                        Text(
                          widget.restaurant["location"] ?? "📍 Online Delivery",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _actionButton(
                              Icons.restaurant_menu,
                              "Menu",
                              _showMenuSheet,
                            ),
                            _actionButton(
                              Icons.book_online,
                              "Booking",
                              _showBookingDialog,
                            ),
                            _actionButton(
                              Icons.shopping_cart,
                              "Order",
                              _addToCart,
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          "📝 Reviews",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        if (reviews.isEmpty)
                          const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "No reviews yet. Be the first!",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        else
                          ...reviews.map(
                            (review) => ListTile(
                              leading: CircleAvatar(
                                backgroundColor: primaryGreen.withOpacity(0.1),
                                child: Text(
                                  (review["customer_name"] ?? "U")[0]
                                      .toUpperCase(),
                                ),
                              ),
                              title: Text(review["customer_name"] ?? "User"),
                              subtitle: Text(review["comment"] ?? ""),
                              trailing: Text("⭐ ${review["rating"]}"),
                            ),
                          ),
                        const Divider(),
                        const Text(
                          "✏️ Write a Review",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: List.generate(
                            5,
                            (i) => IconButton(
                              icon: Icon(
                                i < stars ? Icons.star : Icons.star_border,
                                color: Colors.amber,
                                size: 28,
                              ),
                              onPressed: () => setState(() => stars = i + 1),
                            ),
                          ),
                        ),
                        TextField(
                          controller: comment,
                          decoration: InputDecoration(
                            hintText: "Share your experience...",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: _submitReview,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryGreen,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "Submit Review",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

// ============================================================
// 👑 ADMIN PAGE
// ============================================================
class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  int _page = 0;
  bool _darkMode = false;
  List<dynamic> _pendingOwners = [];
  List<dynamic> _allRestaurants = [];
  List<dynamic> _allUsers = [];
  bool _isLoading = true;

  String _adminName = "Admin";
  String _adminEmail = "admin@gmail.com";

  // ✅ UPDATED - Railway URL
  final String apiUrl = "https://web-production-90b17.up.railway.app/";

  @override
  void initState() {
    super.initState();
    _loadData();
    _loadAdminProfile();
  }

  Future<void> _loadAdminProfile() async {
    try {
      final response = await http.get(
        Uri.parse("${apiUrl}admin/get_admin_profile.php?admin_id=1"),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() {
          _adminName = data["profile"]["username"];
          _adminEmail = data["profile"]["email"];
        });
      }
    } catch (e) {
      print("Error loading admin profile: $e");
    }
  }

  Future<void> _updateAdminProfile(String newName, String newEmail) async {
    if (newName.isEmpty || newEmail.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Name and email cannot be empty"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text("Updating profile..."),
          ],
        ),
      ),
    );

    try {
      final response = await http
          .post(
            Uri.parse("${apiUrl}admin/update_admin_profile.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({
              "admin_id": 1,
              "username": newName,
              "email": newEmail,
            }),
          )
          .timeout(const Duration(seconds: 10));

      if (mounted) {
        Navigator.pop(context);
      }

      final data = json.decode(response.body);

      if (data["success"] == true) {
        setState(() {
          _adminName = newName;
          _adminEmail = newEmail;
        });

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("✅ Profile updated successfully!"),
              backgroundColor: Colors.green,
            ),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("❌ ${data["message"] ?? "Update failed"}"),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("❌ Connection error: ${e.toString()}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _updateAdminPassword(
    String oldPassword,
    String newPassword,
  ) async {
    if (oldPassword.isEmpty || newPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all fields"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (newPassword.length < 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password must be at least 4 characters"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text("Changing password..."),
          ],
        ),
      ),
    );

    try {
      final response = await http
          .post(
            Uri.parse("${apiUrl}admin/change_admin_password.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({
              "admin_id": 1,
              "old_password": oldPassword,
              "new_password": newPassword,
            }),
          )
          .timeout(const Duration(seconds: 10));

      if (mounted) {
        Navigator.pop(context);
      }

      final data = json.decode(response.body);

      if (data["success"] == true) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("✅ Password changed successfully!"),
              backgroundColor: Colors.green,
            ),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "❌ ${data["message"] ?? "Failed to change password"}",
              ),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("❌ Connection error: ${e.toString()}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    await _loadPendingOwners();
    await _loadAllRestaurants();
    await _loadAllUsers();
    setState(() => _isLoading = false);
  }

  Future<void> _loadPendingOwners() async {
    try {
      final response = await http.get(
        Uri.parse("${apiUrl}admin/get_pending_owners.php"),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() => _pendingOwners = data["owners"]);
      }
    } catch (e) {
      print("Error loading pending owners: $e");
    }
  }

  Future<void> _loadAllRestaurants() async {
    try {
      final response = await http.get(
        Uri.parse("${apiUrl}admin/get_all_restaurants.php"),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() => _allRestaurants = data["restaurants"]);
      }
    } catch (e) {
      print("Error loading restaurants: $e");
    }
  }

  Future<void> _loadAllUsers() async {
    try {
      final response = await http.get(
        Uri.parse("${apiUrl}admin/get_all_users.php"),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() => _allUsers = data["users"]);
      }
    } catch (e) {
      print("Error loading users: $e");
    }
  }

  Future<void> _approveOwner(int ownerId) async {
    try {
      final response = await http.post(
        Uri.parse("${apiUrl}admin/approve_owner.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"owner_id": ownerId, "action": "approve"}),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        await _loadData();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Owner approved!"),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      print("Error approving owner: $e");
    }
  }

  Future<void> _rejectOwner(int ownerId) async {
    try {
      final response = await http.post(
        Uri.parse("${apiUrl}admin/approve_owner.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"owner_id": ownerId, "action": "reject"}),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        await _loadData();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Owner rejected!"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print("Error rejecting owner: $e");
    }
  }

  Future<void> _deleteRestaurant(int restaurantId) async {
    try {
      final response = await http.post(
        Uri.parse("${apiUrl}admin/delete_restaurant.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"restaurant_id": restaurantId}),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        await _loadData();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Restaurant deleted!"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print("Error deleting restaurant: $e");
    }
  }

  Future<void> _deleteUser(int userId) async {
    try {
      final response = await http.post(
        Uri.parse("${apiUrl}admin/delete_user.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"user_id": userId}),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        await _loadData();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("User deleted!"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print("Error deleting user: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: _darkMode ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Admin Dashboard"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF0F5C4A),
                  Color(0xFF58D44D),
                  Color(0xFFF9800),
                ],
              ),
            ),
          ),
          foregroundColor: Colors.white,
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : IndexedStack(
                index: _page,
                children: [
                  _buildDashboard(),
                  _buildPendingOwnersPage(),
                  _buildRestaurantsPage(),
                  _buildUsersPage(),
                  _buildProfilePage(),
                ],
              ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          onTap: (index) => setState(() => _page = index),
          selectedItemColor: const Color(0xFF1E88E5),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Pending"),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              label: "Restaurants",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Users"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboard() {
    int totalRestaurants = _allRestaurants.length;
    int totalUsers = _allUsers.length;
    int totalPending = _pendingOwners.length;

    int totalOrders = 0;
    int totalBookings = 0;
    Map<int, int> ordersByRestaurant = {};
    Map<int, int> bookingsByRestaurant = {};

    for (var restaurant in _allRestaurants) {
      int orders = 0;
      int bookings = 0;

      var ordersValue = restaurant["orders_count"];
      if (ordersValue != null) {
        orders = ordersValue is int
            ? ordersValue
            : (ordersValue as num).toInt();
      }

      var bookingsValue = restaurant["bookings_count"];
      if (bookingsValue != null) {
        bookings = bookingsValue is int
            ? bookingsValue
            : (bookingsValue as num).toInt();
      }

      ordersByRestaurant[restaurant["id"]] = orders;
      bookingsByRestaurant[restaurant["id"]] = bookings;

      totalOrders += orders;
      totalBookings += bookings;
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Welcome back",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF888888),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text("🔐", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _adminName,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Here's what's happening today.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E88E5).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.admin_panel_settings,
                      size: 28,
                      color: Color(0xFF1E88E5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Overview",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildStatCard(
                title: "Restaurants",
                value: totalRestaurants.toString(),
                icon: Icons.restaurant,
                color: const Color(0xFF2E7D32),
                onTap: () => setState(() => _page = 2),
              ),
              const SizedBox(width: 12),
              _buildStatCard(
                title: "Total Users",
                value: totalUsers.toString(),
                icon: Icons.people,
                color: const Color(0xFF1E88E5),
                onTap: () => setState(() => _page = 3),
              ),
              const SizedBox(width: 12),
              _buildStatCard(
                title: "Pending",
                value: totalPending.toString(),
                icon: Icons.pending_actions,
                color: const Color(0xFFE53935),
                onTap: () => setState(() => _page = 1),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildStatCard(
                title: "Total Orders",
                value: totalOrders.toString(),
                icon: Icons.shopping_bag,
                color: const Color(0xFFFB8C00),
                onTap: () => _showOrdersDetailsDialog(ordersByRestaurant),
              ),
              const SizedBox(width: 12),
              _buildStatCard(
                title: "Total Bookings",
                value: totalBookings.toString(),
                icon: Icons.event,
                color: const Color(0xFF00ACC1),
                onTap: () => _showBookingsDetailsDialog(bookingsByRestaurant),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 20),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showOrdersDetailsDialog(Map<int, int> ordersByRestaurant) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Orders by Restaurant",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          width: double.maxFinite,
          child: _allRestaurants.isEmpty
              ? const Center(child: Text("No restaurants found"))
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: _allRestaurants
                      .map(
                        (restaurant) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.orange.shade100,
                            child: Text(
                              restaurant["name"][0].toUpperCase(),
                              style: const TextStyle(color: Colors.orange),
                            ),
                          ),
                          title: Text(restaurant["name"]),
                          trailing: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "${ordersByRestaurant[restaurant["id"]] ?? 0} orders",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }

  void _showBookingsDetailsDialog(Map<int, int> bookingsByRestaurant) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Bookings by Restaurant",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Container(
          width: double.maxFinite,
          child: _allRestaurants.isEmpty
              ? const Center(child: Text("No restaurants found"))
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: _allRestaurants
                      .map(
                        (restaurant) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.teal.shade100,
                            child: Text(
                              restaurant["name"][0].toUpperCase(),
                              style: const TextStyle(color: Colors.teal),
                            ),
                          ),
                          title: Text(restaurant["name"]),
                          trailing: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "${bookingsByRestaurant[restaurant["id"]] ?? 0} bookings",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }

  Widget _buildPendingOwnersPage() {
    if (_pendingOwners.isEmpty) {
      return const Center(
        child: Text("No pending owners", style: TextStyle(fontSize: 16)),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: _pendingOwners.length,
      itemBuilder: (context, index) {
        final owner = _pendingOwners[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange.shade100,
              child: Text(owner["username"][0].toUpperCase()),
            ),
            title: Text(owner["username"]),
            subtitle: Text(owner["email"]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.check, color: Colors.green),
                  onPressed: () => _approveOwner(owner["id"]),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: () => _rejectOwner(owner["id"]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildRestaurantsPage() {
    if (_allRestaurants.isEmpty) {
      return const Center(
        child: Text("No restaurants", style: TextStyle(fontSize: 16)),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: _allRestaurants.length,
      itemBuilder: (context, index) {
        final restaurant = _allRestaurants[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                restaurant["image"] ?? "https://picsum.photos/50",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.restaurant, size: 40),
              ),
            ),
            title: Text(restaurant["name"]),
            subtitle: Text(
              "Owner: ${restaurant["owner_name"]}\nStatus: ${restaurant["status"]}",
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _deleteRestaurant(restaurant["id"]),
            ),
          ),
        );
      },
    );
  }

  Widget _buildUsersPage() {
    if (_allUsers.isEmpty) {
      return const Center(
        child: Text("No users", style: TextStyle(fontSize: 16)),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: _allUsers.length,
      itemBuilder: (context, index) {
        final user = _allUsers[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: user["role"] == "owner"
                  ? Colors.orange.shade100
                  : Colors.green.shade100,
              child: Text(user["username"][0].toUpperCase()),
            ),
            title: Text(user["username"]),
            subtitle: Text(
              "${user["email"]}\nRole: ${user["role"]} | Status: ${user["status"]}",
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _deleteUser(user["id"]),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProfilePage() {
    String adminName = _adminName;
    String adminEmail = _adminEmail;
    String adminRole = "Super Administrator";
    String joinDate = "May 2026";
    String firstLetter = adminName.isNotEmpty
        ? adminName[0].toUpperCase()
        : "A";

    int totalRestaurants = _allRestaurants.length;
    int totalUsers = _allUsers.length;
    int totalPending = _pendingOwners.length;

    int totalOrders = 0;
    for (var restaurant in _allRestaurants) {
      var ordersValue = restaurant["orders_count"];
      if (ordersValue != null) {
        totalOrders += ordersValue is int
            ? ordersValue
            : (ordersValue as num).toInt();
      }
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=800",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            adminName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.blue.shade100,
                    child: Text(
                      firstLetter,
                      style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Text(
            adminName,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade600, Colors.blue.shade400],
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.admin_panel_settings,
                  size: 16,
                  color: Colors.white,
                ),
                const SizedBox(width: 6),
                Text(
                  adminRole,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.email, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  adminEmail,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                _buildProfileStatCard(
                  "Restaurants",
                  totalRestaurants.toString(),
                  Icons.restaurant,
                  Colors.orange,
                  () => setState(() => _page = 2),
                ),
                const SizedBox(width: 12),
                _buildProfileStatCard(
                  "Total Users",
                  totalUsers.toString(),
                  Icons.people,
                  Colors.blue,
                  () => setState(() => _page = 3),
                ),
                const SizedBox(width: 12),
                _buildProfileStatCard(
                  "Pending",
                  totalPending.toString(),
                  Icons.pending_actions,
                  Colors.red,
                  () => setState(() => _page = 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: _darkMode ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.blue, size: 22),
                      SizedBox(width: 12),
                      Text(
                        "Personal Information",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                _buildInfoTile(
                  Icons.person_outline,
                  "Full Name",
                  adminName,
                  () => _showEditProfileDialog(adminName, adminEmail),
                ),
                _buildInfoTile(
                  Icons.email_outlined,
                  "Email Address",
                  adminEmail,
                  () => _showEditProfileDialog(adminName, adminEmail),
                ),
                _buildInfoTile(
                  Icons.calendar_today,
                  "Joined Date",
                  joinDate,
                  null,
                ),
                _buildInfoTile(
                  Icons.admin_panel_settings,
                  "Role",
                  adminRole,
                  null,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: _darkMode ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.security, color: Colors.orange, size: 22),
                      SizedBox(width: 12),
                      Text(
                        "Security",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                _buildMenuTile(
                  Icons.lock_outline,
                  "Change Password",
                  "Update your account password",
                  _showAdminChangePasswordDialog,
                  Colors.orange,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: _darkMode ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.settings, color: Colors.teal, size: 22),
                      SizedBox(width: 12),
                      Text(
                        "Preferences",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                SwitchListTile(
                  secondary: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.dark_mode,
                      color: Colors.purple.shade700,
                      size: 20,
                    ),
                  ),
                  title: const Text("Dark Mode"),
                  subtitle: const Text("Switch between light and dark theme"),
                  value: _darkMode,
                  onChanged: (v) => setState(() => _darkMode = v),
                  activeColor: Colors.purple,
                ),
                _buildMenuTile(
                  Icons.notifications,
                  "Notifications",
                  "Manage your notification preferences",
                  _showNotificationsDialog,
                  Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: _darkMode ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.info, color: Colors.green, size: 22),
                      SizedBox(width: 12),
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                _buildMenuTile(
                  Icons.restaurant,
                  "About ETOS",
                  "Version 2.0.0",
                  _showAboutDialog,
                  Colors.green,
                ),
                _buildMenuTile(
                  Icons.share,
                  "Share App",
                  "Invite others to join",
                  _shareApp,
                  Colors.teal,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: OutlinedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Logout"),
                    content: const Text("Are you sure you want to logout?"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const StartPage(),
                            ),
                            (route) => false,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text("Logout"),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.logout, color: Colors.red),
              label: const Text(
                "Logout",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildProfileStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color.withOpacity(0.1), color.withOpacity(0.05)],
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color.withOpacity(0.3)),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile(
    IconData icon,
    String label,
    String value,
    VoidCallback? onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.blue, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF757575),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          if (onTap != null)
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.edit, size: 16, color: Colors.blue),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMenuTile(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
    Color color,
  ) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: color, size: 20),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.grey.shade400,
        size: 20,
      ),
      onTap: onTap,
    );
  }

  void _showEditProfileDialog(String currentName, String currentEmail) {
    final nameCtrl = TextEditingController(text: currentName);
    final emailCtrl = TextEditingController(text: currentEmail);
    bool isLoading = false;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text(
              "Edit Profile",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue.shade100,
                  child: Text(
                    currentName.isNotEmpty ? currentName[0].toUpperCase() : "A",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: nameCtrl,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person_outline, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        if (nameCtrl.text.isEmpty || emailCtrl.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Name and email cannot be empty"),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        setStateDialog(() => isLoading = true);
                        await _updateAdminProfile(
                          nameCtrl.text.trim(),
                          emailCtrl.text.trim(),
                        );
                        setStateDialog(() => isLoading = false);
                        if (mounted) Navigator.pop(context);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text("Save Changes"),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showAdminChangePasswordDialog() {
    final oldPassCtrl = TextEditingController();
    final newPassCtrl = TextEditingController();
    final confirmPassCtrl = TextEditingController();
    bool showOld = false, showNew = false, showConfirm = false;
    bool isLoading = false;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text(
              "Change Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: oldPassCtrl,
                  obscureText: !showOld,
                  decoration: InputDecoration(
                    labelText: "Current Password",
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showOld ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () => setStateDialog(() => showOld = !showOld),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: newPassCtrl,
                  obscureText: !showNew,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showNew ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () => setStateDialog(() => showNew = !showNew),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: confirmPassCtrl,
                  obscureText: !showConfirm,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showConfirm ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () =>
                          setStateDialog(() => showConfirm = !showConfirm),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        if (newPassCtrl.text != confirmPassCtrl.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Passwords don't match"),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        if (newPassCtrl.text.length < 4) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Password must be at least 4 characters",
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        if (oldPassCtrl.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter current password"),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        setStateDialog(() => isLoading = true);
                        await _updateAdminPassword(
                          oldPassCtrl.text,
                          newPassCtrl.text,
                        );
                        setStateDialog(() => isLoading = false);
                        if (mounted) Navigator.pop(context);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Text("Update Password"),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showNotificationsDialog() {
    bool emailNotif = true, pushNotif = true;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text(
              "Notifications",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SwitchListTile(
                  title: const Text("Email Notifications"),
                  subtitle: const Text("Receive updates via email"),
                  value: emailNotif,
                  onChanged: (v) => setStateDialog(() => emailNotif = v),
                  activeColor: Colors.blue,
                ),
                SwitchListTile(
                  title: const Text("Push Notifications"),
                  subtitle: const Text("Receive push notifications"),
                  value: pushNotif,
                  onChanged: (v) => setStateDialog(() => pushNotif = v),
                  activeColor: Colors.blue,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Notification preferences saved!"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text("Save"),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "About ETOS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.restaurant, size: 50, color: Colors.blue),
            ),
            const SizedBox(height: 16),
            const Text(
              "ETOS Admin Panel",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text("Version 2.0.0", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            const Text(
              "Complete restaurant management system for administrators. Manage users, restaurants, orders, and more.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(height: 16),
            const Divider(),
            ListTile(
              leading: Icon(Icons.email, size: 18, color: Colors.blue),
              title: const Text("support@etos.com"),
              dense: true,
            ),
            ListTile(
              leading: Icon(Icons.web, size: 18, color: Colors.blue),
              title: const Text("www.etos.com"),
              dense: true,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }

  void _shareApp() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Share ETOS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.share, size: 50, color: Colors.blue),
            const SizedBox(height: 16),
            const Text(
              "Share this app with your friends!",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildShareOption(Icons.message, "WhatsApp", Colors.green),
                _buildShareOption(Icons.facebook, "Facebook", Colors.blue),
                _buildShareOption(Icons.email, "Email", Colors.red),
                _buildShareOption(Icons.copy, "Copy Link", Colors.grey),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Close"),
          ),
        ],
      ),
    );
  }

  Widget _buildShareOption(IconData icon, String label, Color color) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Sharing via $label..."),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(height: 6),
          Text(label, style: TextStyle(fontSize: 11, color: Colors.grey)),
        ],
      ),
    );
  }
}

// ============================================================
// 👨‍🍳 OWNER HOME PAGE
// ============================================================
class OwnerHomePage extends StatefulWidget {
  final int ownerId;
  final String ownerName;
  final String email;
  final String apiUrl;

  const OwnerHomePage({
    super.key,
    required this.ownerId,
    required this.ownerName,
    required this.email,
    required this.apiUrl,
  });

  @override
  State<OwnerHomePage> createState() => _OwnerHomePageState();
}

class _OwnerHomePageState extends State<OwnerHomePage> {
  int _currentIndex = 0;
  bool _isDark = false;
  bool _isLoading = true;
  bool _hasRestaurant = false;
  Map<String, dynamic>? _restaurantData;
  List<dynamic> _menu = [];
  List<dynamic> _pendingOrders = [];
  List<dynamic> _acceptedOrders = [];
  List<dynamic> _bookings = [];

  Map<String, dynamic> _ownerProfile = {};
  bool _isEditingProfile = false;

  final Color primaryGreen = const Color(0xFF0F5C4A);
  final Color lightGreen = const Color(0xFF58D44D);

  @override
  void initState() {
    super.initState();
    _loadData();
    _loadOwnerProfile();
  }

  Future<void> _loadOwnerProfile() async {
    try {
      final response = await http.get(
        Uri.parse(
          "${widget.apiUrl}owner/get_owner_profile.php?owner_id=${widget.ownerId}",
        ),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() => _ownerProfile = data["profile"]);
      } else {
        setState(() {
          _ownerProfile = {
            "username": widget.ownerName,
            "email": widget.email,
            "phone": "",
            "address": "",
            "bio": "",
            "avatar": "",
          };
        });
      }
    } catch (e) {
      setState(() {
        _ownerProfile = {
          "username": widget.ownerName,
          "email": widget.email,
          "phone": "",
          "address": "",
          "bio": "",
          "avatar": "",
        };
      });
    }
  }

  Future<void> _deleteBooking(int bookingId) async {
    bool? confirm = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete Booking"),
        content: const Text(
          "Are you sure you want to delete this booking permanently?",
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text("Delete", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    try {
      final response = await http
          .post(
            Uri.parse("${widget.apiUrl}owner/delete_booking.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({"booking_id": bookingId}),
          )
          .timeout(const Duration(seconds: 10));

      final data = json.decode(response.body);

      if (data["success"] == true) {
        await _loadBookings();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("✅ Booking deleted successfully!"),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("❌ ${data["message"] ?? "Delete failed"}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("❌ Error: ${e.toString()}"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _deleteAllBookings() async {
    if (_bookings.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("No bookings to delete"),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    bool? confirm = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Clear All Bookings"),
        content: Text(
          "Are you sure you want to delete all ${_bookings.length} bookings?\n\nThis action cannot be undone!",
          style: const TextStyle(fontSize: 14),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              "Delete All",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    try {
      final response = await http
          .post(
            Uri.parse("${widget.apiUrl}owner/delete_all_bookings.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({"restaurant_id": _restaurantData?["id"]}),
          )
          .timeout(const Duration(seconds: 10));

      final data = json.decode(response.body);

      if (data["success"] == true) {
        await _loadBookings();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "✅ ${data["message"]} (${data["count"]} bookings deleted)",
            ),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("❌ ${data["message"] ?? "Delete failed"}"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("❌ Error: ${e.toString()}"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _updateOwnerProfile(Map<String, dynamic> updatedData) async {
    try {
      final response = await http.post(
        Uri.parse("${widget.apiUrl}owner/update_owner_profile.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"owner_id": widget.ownerId, ...updatedData}),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        setState(() {
          _ownerProfile = {..._ownerProfile, ...updatedData};
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Profile updated successfully!"),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(data["message"] ?? "Update failed"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error: ${e.toString()}"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _changePassword(String oldPassword, String newPassword) async {
    try {
      final response = await http.post(
        Uri.parse("${widget.apiUrl}owner/change_password.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "owner_id": widget.ownerId,
          "old_password": oldPassword,
          "new_password": newPassword,
        }),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Password changed successfully!"),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(data["message"] ?? "Failed to change password"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error: ${e.toString()}"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _uploadAvatar() async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Avatar upload feature coming soon!"),
        backgroundColor: Colors.orange,
      ),
    );
  }

  void _showEditProfileDialog() {
    final nameCtrl = TextEditingController(text: _ownerProfile["username"]);
    final emailCtrl = TextEditingController(text: _ownerProfile["email"]);
    final phoneCtrl = TextEditingController(text: _ownerProfile["phone"] ?? "");
    final addressCtrl = TextEditingController(
      text: _ownerProfile["address"] ?? "",
    );
    final bioCtrl = TextEditingController(text: _ownerProfile["bio"] ?? "");

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person, color: primaryGreen),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: emailCtrl,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email, color: primaryGreen),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: phoneCtrl,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone, color: primaryGreen),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: addressCtrl,
                decoration: InputDecoration(
                  labelText: "Address",
                  prefixIcon: Icon(Icons.location_on, color: primaryGreen),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: bioCtrl,
                decoration: InputDecoration(
                  labelText: "Bio / Description",
                  prefixIcon: Icon(Icons.description, color: primaryGreen),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              _updateOwnerProfile({
                "username": nameCtrl.text,
                "email": emailCtrl.text,
                "phone": phoneCtrl.text,
                "address": addressCtrl.text,
                "bio": bioCtrl.text,
              });
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
            child: const Text("Save Changes"),
          ),
        ],
      ),
    );
  }

  void _showChangePasswordDialog() {
    final oldPassCtrl = TextEditingController();
    final newPassCtrl = TextEditingController();
    final confirmPassCtrl = TextEditingController();
    bool _showOldPassword = false;
    bool _showNewPassword = false;
    bool _showConfirmPassword = false;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text(
              "Change Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: oldPassCtrl,
                    obscureText: !_showOldPassword,
                    decoration: InputDecoration(
                      labelText: "Current Password",
                      prefixIcon: Icon(Icons.lock, color: primaryGreen),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showOldPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () => setStateDialog(
                          () => _showOldPassword = !_showOldPassword,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: newPassCtrl,
                    obscureText: !_showNewPassword,
                    decoration: InputDecoration(
                      labelText: "New Password",
                      prefixIcon: Icon(Icons.lock_outline, color: primaryGreen),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showNewPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () => setStateDialog(
                          () => _showNewPassword = !_showNewPassword,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: confirmPassCtrl,
                    obscureText: !_showConfirmPassword,
                    decoration: InputDecoration(
                      labelText: "Confirm New Password",
                      prefixIcon: Icon(Icons.lock_outline, color: primaryGreen),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () => setStateDialog(
                          () => _showConfirmPassword = !_showConfirmPassword,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (newPassCtrl.text != confirmPassCtrl.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("New passwords don't match"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }
                  if (newPassCtrl.text.length < 4) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Password must be at least 4 characters"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  }
                  _changePassword(oldPassCtrl.text, newPassCtrl.text);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
                child: const Text("Change Password"),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    await _loadRestaurant();
    if (_hasRestaurant) {
      await _loadMenu();
      await _loadOrders();
      await _loadBookings();
    }
    setState(() => _isLoading = false);
  }

  Future<void> _loadRestaurant() async {
    try {
      final response = await http.get(
        Uri.parse(
          "${widget.apiUrl}owner/get_restaurant.php?owner_id=${widget.ownerId}",
        ),
      );
      final data = json.decode(response.body);
      if (data["success"] == true && data["restaurant"] != null) {
        setState(() {
          _hasRestaurant = true;
          _restaurantData = data["restaurant"];
        });
      } else {
        setState(() => _hasRestaurant = false);
      }
    } catch (e) {
      setState(() => _hasRestaurant = false);
    }
  }

  Future<void> _loadMenu() async {
    if (_restaurantData == null) return;
    try {
      final response = await http.get(
        Uri.parse(
          "${widget.apiUrl}owner/get_menu.php?restaurant_id=${_restaurantData!["id"]}",
        ),
      );
      setState(() => _menu = json.decode(response.body));
    } catch (e) {
      print("Error loading menu: $e");
    }
  }

  Future<void> _loadOrders() async {
    if (_restaurantData == null) return;
    try {
      final response = await http.get(
        Uri.parse(
          "${widget.apiUrl}owner/get_orders.php?restaurant_id=${_restaurantData!["id"]}",
        ),
      );
      final data = json.decode(response.body);
      setState(() {
        _pendingOrders = data["pending"] ?? [];
        _acceptedOrders = data["accepted"] ?? [];
      });
    } catch (e) {
      print("Error loading orders: $e");
    }
  }

  Future<void> _loadBookings() async {
    if (_restaurantData == null) return;
    try {
      final response = await http.get(
        Uri.parse(
          "${widget.apiUrl}owner/get_bookings.php?restaurant_id=${_restaurantData!["id"]}",
        ),
      );
      setState(() => _bookings = json.decode(response.body));
    } catch (e) {
      print("Error loading bookings: $e");
    }
  }

  Future<void> _updateOrderStatus(int orderId, String status) async {
    try {
      await http.post(
        Uri.parse("${widget.apiUrl}owner/update_order_status.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"order_id": orderId, "status": status}),
      );
      await _loadOrders();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Order $status")));
    } catch (e) {
      print("Error updating order: $e");
    }
  }

  Future<void> _updateBookingStatus(int bookingId, String status) async {
    try {
      final response = await http
          .post(
            Uri.parse("${widget.apiUrl}owner/update_booking_status.php"),
            headers: {"Content-Type": "application/json"},
            body: json.encode({"id": bookingId, "status": status}),
          )
          .timeout(const Duration(seconds: 10));

      final data = json.decode(response.body);

      if (data["success"] == true) {
        await _loadBookings();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Booking $status"),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("❌ Failed to update booking"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("❌ Error: ${e.toString()}"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _addMenuItem(String name, String price, String image) async {
    try {
      final response = await http.post(
        Uri.parse("${widget.apiUrl}owner/add_menu.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "restaurant_id": _restaurantData!["id"],
          "name": name,
          "price": double.parse(price),
          "image": image,
        }),
      );
      final data = json.decode(response.body);
      if (data["success"] == true) {
        await _loadMenu();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Item added!")));
      }
    } catch (e) {
      print("Error adding menu item: $e");
    }
  }

  Future<void> _deleteMenuItem(int itemId) async {
    try {
      await http.post(
        Uri.parse("${widget.apiUrl}owner/delete_menu.php"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"id": itemId}),
      );
      await _loadMenu();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Item deleted!")));
    } catch (e) {
      print("Error deleting menu item: $e");
    }
  }

  Future<void> _createOrUpdateRestaurant(
    Map<String, dynamic> data,
    bool isNew,
  ) async {
    final url = isNew
        ? "${widget.apiUrl}owner/add_restaurant.php"
        : "${widget.apiUrl}owner/update_restaurant.php";
    final body = isNew
        ? json.encode({...data, "owner_id": widget.ownerId})
        : json.encode({...data, "id": _restaurantData!["id"]});

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: body,
      );
      final result = json.decode(response.body);
      if (result["success"] == true) {
        await _loadData();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              isNew ? "Restaurant created!" : "Restaurant updated!",
            ),
          ),
        );
      }
    } catch (e) {
      print("Error saving restaurant: $e");
    }
  }

  void _showAddMenuItemDialog() {
    final nameCtrl = TextEditingController();
    final priceCtrl = TextEditingController();
    final imageCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Add Menu Item"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: priceCtrl,
              decoration: const InputDecoration(labelText: "Price (DA)"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: imageCtrl,
              decoration: const InputDecoration(labelText: "Image URL"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameCtrl.text.isNotEmpty && priceCtrl.text.isNotEmpty) {
                _addMenuItem(nameCtrl.text, priceCtrl.text, imageCtrl.text);
                Navigator.pop(context);
              }
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }

  void _showEditRestaurantDialog() {
    final nameCtrl = TextEditingController(text: _restaurantData?["name"]);
    final phoneCtrl = TextEditingController(text: _restaurantData?["phone"]);
    final locationCtrl = TextEditingController(
      text: _restaurantData?["location"],
    );
    final imageCtrl = TextEditingController(text: _restaurantData?["image"]);
    final hoursCtrl = TextEditingController(text: _restaurantData?["hours"]);
    final descCtrl = TextEditingController(
      text: _restaurantData?["description"],
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(_hasRestaurant ? "Edit Restaurant" : "Setup Restaurant"),
        content: SizedBox(
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameCtrl,
                  decoration: const InputDecoration(
                    labelText: "Restaurant Name",
                  ),
                ),
                TextField(
                  controller: phoneCtrl,
                  decoration: const InputDecoration(labelText: "Phone"),
                ),
                TextField(
                  controller: locationCtrl,
                  decoration: const InputDecoration(labelText: "Location"),
                ),
                TextField(
                  controller: imageCtrl,
                  decoration: const InputDecoration(labelText: "Image URL"),
                ),
                TextField(
                  controller: hoursCtrl,
                  decoration: const InputDecoration(labelText: "Hours"),
                ),
                TextField(
                  controller: descCtrl,
                  decoration: const InputDecoration(labelText: "Description"),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              _createOrUpdateRestaurant({
                "name": nameCtrl.text,
                "phone": phoneCtrl.text,
                "location": locationCtrl.text,
                "image": imageCtrl.text,
                "hours": hoursCtrl.text,
                "description": descCtrl.text,
              }, !_hasRestaurant);
              Navigator.pop(context);
            },
            child: Text(_hasRestaurant ? "Update" : "Create"),
          ),
        ],
      ),
    );
  }

  void _toggleTheme(bool value) => setState(() => _isDark = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: _isDark ? Brightness.dark : Brightness.light,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: _isDark
            ? Colors.grey.shade900
            : Colors.grey.shade50,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/photo3.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : !_hasRestaurant
              ? _buildNoRestaurantScreen()
              : IndexedStack(
                  index: _currentIndex,
                  children: [
                    _buildDashboard(),
                    _buildOrdersPage(),
                    _buildBookingsPage(),
                    _buildPerfectProfilePage(),
                  ],
                ),
        ),
        bottomNavigationBar: _hasRestaurant
            ? BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) => setState(() => _currentIndex = index),
                selectedItemColor: primaryGreen,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    label: "Dashboard",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag),
                    label: "Orders",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.event),
                    label: "Bookings",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  ),
                ],
              )
            : null,
      ),
    );
  }

  Widget _buildNoRestaurantScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant, size: 80, color: primaryGreen),
            const SizedBox(height: 24),
            Text(
              "Welcome ${widget.ownerName}!",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text("You don't have a restaurant yet. Set it up now!"),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: _showEditRestaurantDialog,
              icon: const Icon(Icons.add_business),
              label: const Text("Setup Restaurant"),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryGreen,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboard() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 30,
            ),
            decoration: BoxDecoration(
              color: primaryGreen,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white24,
                  backgroundImage: _restaurantData?["image"] != null
                      ? NetworkImage(_restaurantData!["image"])
                      : null,
                  child: _restaurantData?["image"] == null
                      ? const Icon(Icons.restaurant, color: Colors.white)
                      : null,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome back,",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                        _restaurantData?["name"] ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            "${_restaurantData?["rating"] ?? 0}",
                            style: const TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.white),
                  onPressed: _showEditRestaurantDialog,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                _statCard(
                  "Menu Items",
                  _menu.length.toString(),
                  Icons.restaurant_menu,
                  Colors.orange,
                ),
                const SizedBox(width: 12),
                _statCard(
                  "Pending Orders",
                  _pendingOrders.length.toString(),
                  Icons.receipt,
                  Colors.red,
                ),
                const SizedBox(width: 12),
                _statCard(
                  "Bookings",
                  _bookings.length.toString(),
                  Icons.event,
                  Colors.purple,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _showAddMenuItemDialog,
                    icon: Icon(Icons.add, color: primaryGreen),
                    label: Text(
                      "Add Menu Item",
                      style: TextStyle(
                        color: primaryGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: primaryGreen,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _menu.length,
            itemBuilder: (context, index) {
              final item = _menu[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              item["image"] ??
                                  "https://picsum.photos/60?random=$index",
                              width: 55,
                              height: 55,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(
                                width: 55,
                                height: 55,
                                color: primaryGreen.withOpacity(0.1),
                                child: Icon(
                                  Icons.fastfood,
                                  color: primaryGreen,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["name"],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "${item["price"]} DA",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: primaryGreen,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                              size: 22,
                            ),
                            onPressed: () => _deleteMenuItem(item["id"]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _statCard(String title, String value, IconData icon, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrdersPage() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "🟡 Pending (${_pendingOrders.length})",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ..._pendingOrders.map(
          (order) => Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: ListTile(
              leading: const Icon(Icons.receipt, color: Colors.orange),
              title: Text(order["customer_name"]),
              subtitle: Text(order["items"] ?? ""),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.check, color: Colors.green),
                    onPressed: () =>
                        _updateOrderStatus(order["id"], "accepted"),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.red),
                    onPressed: () =>
                        _updateOrderStatus(order["id"], "cancelled"),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "🟢 In Progress (${_acceptedOrders.length})",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ..._acceptedOrders.map(
          (order) => Card(
            color: Colors.green.shade50,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: ListTile(
              leading: const Icon(Icons.delivery_dining, color: Colors.green),
              title: Text(order["customer_name"]),
              subtitle: Text(order["items"] ?? ""),
              trailing: ElevatedButton(
                onPressed: () => _updateOrderStatus(order["id"], "delivered"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text("Complete"),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBookingsPage() {
    return Column(
      children: [
        if (_bookings.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: _deleteAllBookings,
                  icon: const Icon(Icons.delete_sweep, size: 18),
                  label: Text("Clear All (${_bookings.length})"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade700,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        Expanded(
          child: _bookings.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.event_busy, size: 64, color: Colors.grey),
                      SizedBox(height: 16),
                      Text("No bookings yet", style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text(
                        "Bookings will appear here",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: _bookings.length,
                  itemBuilder: (context, index) {
                    final booking = _bookings[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: _getBookingStatusColor(
                                booking["status"],
                              ),
                              child: Icon(
                                booking["status"] == "confirmed"
                                    ? Icons.check
                                    : booking["status"] == "cancelled"
                                    ? Icons.close
                                    : Icons.pending,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    booking["customer_name"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${booking["booking_date"]} • ${booking["booking_time"]} • ${booking["guests"]} guests",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (booking["status"] == "pending")
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    ),
                                    onPressed: () => _updateBookingStatus(
                                      booking["id"],
                                      "confirmed",
                                    ),
                                    tooltip: "Confirm",
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.close,
                                      color: Colors.orange,
                                    ),
                                    onPressed: () => _updateBookingStatus(
                                      booking["id"],
                                      "cancelled",
                                    ),
                                    tooltip: "Cancel",
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () =>
                                        _deleteBooking(booking["id"]),
                                    tooltip: "Delete permanently",
                                  ),
                                ],
                              ),
                            if (booking["status"] == "confirmed")
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Chip(
                                    label: Text(booking["status"]),
                                    backgroundColor: Colors.green.shade100,
                                    labelStyle: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () =>
                                        _deleteBooking(booking["id"]),
                                    tooltip: "Delete permanently",
                                  ),
                                ],
                              ),
                            if (booking["status"] == "cancelled")
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Chip(
                                    label: Text(booking["status"]),
                                    backgroundColor: Colors.red.shade100,
                                    labelStyle: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () =>
                                        _deleteBooking(booking["id"]),
                                    tooltip: "Delete permanently",
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }

  Color _getBookingStatusColor(String status) {
    switch (status) {
      case 'confirmed':
        return Colors.green;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  Widget _buildPerfectProfilePage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [primaryGreen, primaryGreen.withOpacity(0.7)],
                  ),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: _uploadAvatar,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            _ownerProfile["avatar"] != null &&
                                _ownerProfile["avatar"].isNotEmpty
                            ? NetworkImage(_ownerProfile["avatar"])
                            : null,
                        child:
                            _ownerProfile["avatar"] == null ||
                                _ownerProfile["avatar"].isEmpty
                            ? Text(
                                _ownerProfile["username"]?.isNotEmpty == true
                                    ? _ownerProfile["username"][0].toUpperCase()
                                    : "?",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: primaryGreen,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Text(
            _ownerProfile["username"] ?? widget.ownerName,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: primaryGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Restaurant Owner",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _profileStatCard(
                  _menu.length.toString(),
                  "Menu Items",
                  Icons.restaurant_menu,
                ),
                _profileStatCard(
                  _pendingOrders.length.toString(),
                  "Pending",
                  Icons.pending_actions,
                ),
                _profileStatCard(
                  _bookings.length.toString(),
                  "Bookings",
                  Icons.event_available,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: _isDark ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Contact Information",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(height: 1, color: Colors.grey.withOpacity(0.3)),
                _infoTile(
                  Icons.email,
                  "Email",
                  _ownerProfile["email"] ?? widget.email,
                ),
                _infoTile(
                  Icons.phone,
                  "Phone",
                  _ownerProfile["phone"]?.isNotEmpty == true
                      ? _ownerProfile["phone"]
                      : "Not set",
                ),
                _infoTile(
                  Icons.location_on,
                  "Address",
                  _ownerProfile["address"]?.isNotEmpty == true
                      ? _ownerProfile["address"]
                      : "Not set",
                ),
                _infoTile(
                  Icons.description,
                  "Bio",
                  _ownerProfile["bio"]?.isNotEmpty == true
                      ? _ownerProfile["bio"]
                      : "No bio added yet",
                  isLong: true,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: _isDark ? Colors.grey.shade800 : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Account Settings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(height: 1, color: Colors.grey.withOpacity(0.3)),
                _settingsTile(
                  Icons.edit,
                  "Edit Profile",
                  "Update your personal information",
                  _showEditProfileDialog,
                ),
                _settingsTile(
                  Icons.lock,
                  "Change Password",
                  "Update your password",
                  _showChangePasswordDialog,
                ),
                _settingsTile(
                  Icons.brightness_6,
                  "Dark Mode",
                  "Switch theme",
                  () {},
                  isSwitch: true,
                  switchValue: _isDark,
                  onSwitchChange: _toggleTheme,
                ),
                _settingsTile(
                  Icons.logout,
                  "Logout",
                  "Sign out from your account",
                  () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const StartPage()),
                      (route) => false,
                    );
                  },
                  isDestructive: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _profileStatCard(String value, String label, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: primaryGreen.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: primaryGreen, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
      ],
    );
  }

  Widget _infoTile(
    IconData icon,
    String title,
    String value, {
    bool isLong = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: primaryGreen.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: primaryGreen, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: isLong ? FontWeight.normal : FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _settingsTile(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap, {
    bool isSwitch = false,
    bool isDestructive = false,
    bool switchValue = false,
    Function(bool)? onSwitchChange,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isDestructive
              ? Colors.red.shade50
              : primaryGreen.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: isDestructive ? Colors.red : primaryGreen,
          size: 20,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isDestructive ? Colors.red : null,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
      ),
      trailing: isSwitch
          ? Switch(
              value: switchValue,
              onChanged: onSwitchChange,
              activeColor: primaryGreen,
            )
          : Icon(Icons.chevron_right, color: Colors.grey.shade400),
      onTap: isSwitch ? null : onTap,
    );
  }
}
