part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController dobCtrl = TextEditingController();
  final TextEditingController caretakerNameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.06; // responsive horizontal padding
    final isLarge = size.width > 500; // tablet view
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // Back Button
              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),

              const SizedBox(height: 5),

              // Title
              Text(
                "Treatment Recipient Details",
                style: TextStyle(
                  fontSize: isLarge ? 26 : 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "Please provide the details of the person who will be receiving the treatment.",
                style: TextStyle(
                  fontSize: isLarge ? 18 : 14,
                  color: Colors.grey[700],
                ),
              ),

              const SizedBox(height: 25),

              // -------------------
              // Treatment Recipient
              // -------------------
              _buildLabel("Treatment Recipient Full Name"),
              _buildInput(
                nameCtrl,
                "Enter treatment recipient's full name (as per ID)",
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel("Date of Birth"),
                        _buildInput(
                          dobCtrl,
                          "dd-mm-yyyy",
                          suffix: Icons.calendar_month,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel("Gender"),
                        _buildDropdown(["Male", "Female", "Other"]),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Divider with text
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Caretaker Contact Details",
                      style: TextStyle(fontSize: isLarge ? 18 : 14),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 25),

              // -------------------
              // Caretaker Details
              // -------------------
              _buildLabel("Caretaker Full Name"),
              _buildInput(caretakerNameCtrl, "Enter full name (as per ID)"),
              const SizedBox(height: 15),

              _buildLabel("Email"),
              _buildInput(emailCtrl, "Enter email address for notifications"),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel("Relationship"),
                        _buildDropdown([
                          "Father",
                          "Mother",
                          "Son",
                          "Daughter",
                          "Relative",
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel("City"),
                        _buildInput(null, "City name"),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              _buildLabel("Alternative Phone Number"),
              _buildInput(phoneCtrl, "Enter alternate contact number"),
              const SizedBox(height: 30),

              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: isLarge ? 20 : 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // -------------------------------------------------------
  // Reusable Form Input Fields
  // -------------------------------------------------------
  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
    );
  }

  Widget _buildInput(
    TextEditingController? controller,
    String hint, {
    IconData? suffix,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        suffixIcon: suffix != null ? Icon(suffix) : null,
      ),
    );
  }

  Widget _buildDropdown(List<String> items) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: items.first,
          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (val) {},
        ),
      ),
    );
  }
}
