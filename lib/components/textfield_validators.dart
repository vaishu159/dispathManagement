class TextFieldValidators {
  // Required field
  static String? required(String? value, {String fieldName = 'This field'}) {
    return (value == null || value.trim().isEmpty)
        ? '$fieldName is required'
        : null;
  }

  // Email validation
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(value) ? null : 'Invalid email address';
  }

  // Phone number (10 digits)
  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegex = RegExp(r'^\d{10}$');
    return phoneRegex.hasMatch(value) ? null : 'Enter a 10-digit phone number';
  }

  // Numeric range (e.g., for age)
  static String? numberInRange(String? value, {int min = 0, int max = 100}) {
    if (value == null || value.trim().isEmpty) return 'Value is required';
    final numVal = int.tryParse(value);
    if (numVal == null) return 'Enter a valid number';
    if (numVal < min || numVal > max) {
      return 'Value must be between $min and $max';
    }
    return null;
  }

  // Password (optional: min length or pattern)
  static String? password(String? value, {int minLength = 6}) {
    if (value == null || value.trim().isEmpty) return 'Password is required';
    return value.length < minLength
        ? 'Password must be at least $minLength characters'
        : null;
  }
}
