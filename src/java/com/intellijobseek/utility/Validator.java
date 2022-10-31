package com.intellijobseek.utility;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator {

    public static boolean isValidPassword(String password) {

        // Regex to check valid password.
        String regexp = "^(?=.*[0-9])"
                + "(?=.*[a-z])(?=.*[A-Z])"
                + "(?=.*[@#$%^&+=])"
                + "(?=\\S+$).{8,20}$";

        // Compile the ReGex
        Pattern p = Pattern.compile(regexp);

        // If the password is empty
        // return false
        if (password == null) {
            return false;
        }

        Matcher m = p.matcher(password);

        // Return if the password
        // matched the ReGex
        return m.matches();
    }

    public static boolean isValidEmail(String email) {
        String regexp = "^[a-zA-Z0-9_+&*-]+(?:\\."
                + "[a-zA-Z0-9_+&*-]+)*@"
                + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
                + "A-Z]{2,7}$";

        Pattern expectedEmail = Pattern.compile(regexp);

        if (email == null) {
            return false;
        }

        return expectedEmail.matcher(email).matches();
    }
}
