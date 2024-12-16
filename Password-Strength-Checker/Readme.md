# 🔒 Password Strength Checker

This is a batch script that evaluates the strength of a given password based on its length and the presence of different character types. It checks for lowercase letters, uppercase letters, numbers, and special symbols to determine if the password is weak, moderate, or strong.

## ✨ Features

- ✅ Verifies the length of the password.
- ✅ Checks for the presence of:
  - 🔤 Lowercase letters
  - 🔠 Uppercase letters
  - 🔢 Numbers
  - ✴️ Special symbols (e.g., `!@#$%^&*()` and others)
- ✅ Provides a simple strength evaluation:
  - 🟥 Weak: Passwords shorter than 6 characters.
  - 🟧 Moderate: Passwords between 6 and 9 characters.
  - 🟩 Strong: Passwords 10 characters or longer.

## 🛠️ Requirements

- 🖥️ Windows operating system.
- 📜 Command Prompt or any terminal that supports `.bat` scripts.

## 🚀 Usage

1. Copy the script to a file named `password-strength-checker.bat`.
2. Open a Command Prompt and navigate to the directory containing the script.
3. Run the script by typing:

   ```
   password-strength-checker.bat
   ```

4. Enter a password when prompted. The script will evaluate its strength and display the results.

## 🧐 Code Explanation

1. **Password Input**: The script prompts the user to enter a password.
2. **Password Length Calculation**: It calculates the length of the password using a loop.
3. **Character Checks**: Using `findstr`, the script checks for the presence of:
   - 🔤 Lowercase letters (`[a-z]`)
   - 🔠 Uppercase letters (`[A-Z]`)
   - 🔢 Numbers (`[0-9]`)
   - ✴️ Special symbols (`[!@#$%^&*()_+|~=\`{}\[\]:;<>?,./-]`)
4. **Strength Evaluation**: The script uses conditional logic to categorize the password as weak, moderate, or strong based on length.
5. **Debug Information**: Displays intermediate checks (e.g., password length, character type presence).

## 📋 Example Output

```
Enter your password: MyP@ssw0rd123
Password Length: 12
Contains Lowercase: 1
Contains Uppercase: 1
Contains Number: 1
Contains Symbol: 1
Strong password.
Press any key to continue . . .
```

## 📌 Notes

- Special symbols include: `!@#$%^&*()_+|~=\`{}\[\]:;<>?,./-`
- Passwords shorter than 6 characters will always be considered weak, regardless of their complexity.
- The script is a basic tool and does not provide comprehensive password security checks.

## ⚠️ Limitations

- The script runs in the Windows Command Prompt and is limited by the features of batch scripting.
- It does not encrypt or store passwords; this is purely for evaluation purposes.

## 📜 License

This script is open-source and free to use. Modify and share it as needed.

---

> _*"A strong password is your first line of defense in the digital world. Protect it wisely!"*_
