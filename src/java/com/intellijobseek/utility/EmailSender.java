package com.intellijobseek.utility;

import java.util.Properties;
import java.util.Random;
import java.mail.Authenticator;
import java.mail.Message;
import java.mail.PasswordAuthentication;
import java.mail.Session;
import java.mail.Transport;
import java.mail.internet.InternetAddress;
import java.mail.internet.MimeMessage;

public class EmailSender {

    //generate vrification code
    public static String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    //send email to the user email
    public static boolean sendEmail(String recvEmail, String orgemail, String orgpassword, String welcomemsg, String otp) {
        boolean test = false;

        String toEmail = recvEmail;
        String fromEmail = orgemail;
        String password = orgpassword;

        try {

            // your host email smtp server details
            String host = "smtp.gmail.com";

            //get the system properties
            Properties properties = System.getProperties();
            System.out.println("PROPERTIES " + properties);
            System.err.println("error: error in sending mail!!! 38");
            
            //setting important information to properties object
            //host set
            properties.put("mail.smtp.host", host);
            properties.put("mail.smtp.port", "465");
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.auth", "true");
            Session session = Session.getInstance(properties, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });
            System.err.println("error: error in sending mail 52!!!");
            //set email message details
            Message mess = new MimeMessage(session);
            System.out.println("error: error in sending mail!!! 55");
            //set from email address
            mess.setFrom(new InternetAddress(fromEmail));
            
            System.out.println("error: error in sending mail!!! 59");
            //set to email address or destination email address
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            System.err.println("error: error in sending mail!!! 62");
            //set email subject
            mess.setSubject("Email Verification");

            //set message text
            mess.setText(welcomemsg+"<br>verify your account using this code: " + otp);
            //send the message
            Transport.send(mess);
            
            System.out.println("error: error in sending mail!!! 71");

            test = true;

        } catch (Exception e) {
            System.err.println("error: error in sending mail!!!");
        }
        return test;
    }
    public static void main(String args[])
    {
        String recvEmail="pewese2452@corylan.com";
        String orgemail="prashantj121999@gmail.com";
        String orgpassword="";
        String welcomemsg="Hello!!!<br>";
        String otp=EmailSender.getRandom();
        EmailSender.sendEmail(recvEmail, orgemail, orgpassword, welcomemsg, otp);        
    }
}