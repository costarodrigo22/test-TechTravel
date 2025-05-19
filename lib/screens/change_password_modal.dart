import 'package:flutter/material.dart';

class ChangePasswordModal extends StatefulWidget {
  const ChangePasswordModal({super.key});

  @override
  State<ChangePasswordModal> createState() => _ChangePasswordModalState();
}

class _ChangePasswordModalState extends State<ChangePasswordModal> {
  bool _obscureCurrent = true;
  bool _obscureNew = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Botão Voltar
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFFAA73F0)),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const SizedBox(height: 8),

              // Título
              const Text(
                'Change\nPassword',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 24),

              // Campo: Senha atual
              _buildPasswordInput(
                hint: 'Current password',
                obscureText: _obscureCurrent,
                onToggleVisibility: () {
                  setState(() => _obscureCurrent = !_obscureCurrent);
                },
              ),

              const SizedBox(height: 24),

              // Separador após "Current password"
              Container(height: 1, color: Colors.white10),
              const SizedBox(height: 24),

              // Campo: Nova senha
              _buildPasswordInput(
                hint: 'New password',
                obscureText: _obscureNew,
                onToggleVisibility: () {
                  setState(() => _obscureNew = !_obscureNew);
                },
              ),
              const SizedBox(height: 16),

              // Campo: Confirmar nova senha
              _buildPasswordInput(
                hint: 'Confirm new password',
                obscureText: _obscureConfirm,
                onToggleVisibility: () {
                  setState(() => _obscureConfirm = !_obscureConfirm);
                },
              ),

              const Spacer(),

              // Botão de ação
              Center(
                child: SizedBox(
                  width: 207,
                  height: 42,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(
                        0x33BC4CF1,
                      ), // fundo 20% opacidade
                      side: const BorderSide(color: Color(0xFFAA73F0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      // ação ao pressionar
                    },
                    child: const Text(
                      'Update Password',
                      style: TextStyle(
                        color: Color(0xFFAA73F0),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordInput({
    required String hint,
    required bool obscureText,
    required VoidCallback onToggleVisibility,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0x33444552), // fundo com 20% de opacidade
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white54),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.white54,
            ),
            onPressed: onToggleVisibility,
          ),
        ),
      ),
    );
  }
}
