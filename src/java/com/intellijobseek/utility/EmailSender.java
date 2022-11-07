package com.intellijobseek.utility;

import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
            
            //set email message details
            Message mess = new MimeMessage(session);
            
            //set from email address
            mess.setFrom(new InternetAddress(fromEmail));
            
            //set to email address or destination email address
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            
            //set email subject
            mess.setSubject("Email Verification");

            //set message text
            mess.setText(welcomemsg+"<br>verify your account using this code: " + otp);
            
            //send the message
            Transport.send(mess);
            
            test = true;

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("error: error in sending mail!!!");
        }
        return test;
    }
//    public static void main(String args[])
//    {
//        String recvEmail="wolon24487@keshitv.com";
//        String orgemail="intellijobseek@gmail.com";
//        String orgpassword="kokqqdwjcylzlmjj";
//        String welcomemsg="Hello!!!<br>";
//        String otp=EmailSender.getRandom();
//        EmailSender.sendEmail(recvEmail, orgemail, orgpassword, welcomemsg, otp);        
//    }
}