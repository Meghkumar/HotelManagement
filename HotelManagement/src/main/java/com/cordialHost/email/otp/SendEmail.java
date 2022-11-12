package com.cordialHost.email.otp;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

	public String getRandom() {
		Random rd = new Random();
		int number = rd.nextInt(999999);

		return String.format("%06d", number);
	}

	public boolean sendEmail(MailUser mailuser) {
		boolean test = false;

		String toemail = mailuser.getEmail();
		String fromEmail = "meghkapale1994@gmail.com";
		String password = "abpylwxglzqwianv";

		try {

			Properties prop = new Properties();
			prop.setProperty("mail.smtp.host", "smtp.gmail.com");
			prop.setProperty("mail.smtp.socketFactory.port", "465");
			prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			prop.setProperty("mail.smtp.starttls.enable", "true");
			prop.setProperty("mail.smtp.auth", "true");
			prop.setProperty("mail.smtp.port", "465");

			// gives authentication for mail and password
			Session session = Session.getInstance(prop, new Authenticator() {

				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(fromEmail, password);
				}

			});

			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(fromEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(toemail));

			message.setSubject("User Email verfication");
			message.setText(
					"Registeration succesfull, Please verify your account using this code" + mailuser.getCode());

			Transport.send(message);
			test = true;

		} catch (Exception e) {

		}

		return test;
	}

}
