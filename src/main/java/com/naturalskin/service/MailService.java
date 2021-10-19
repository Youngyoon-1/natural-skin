package com.naturalskin.service;


import java.util.Properties;


import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class MailService {
	public void gmailSendPw(String pw, String mailAddress) {
        String user = "duddbs774@gmail.com"; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
        String password = "qnfrrmfo1";   // 패스워드

        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); 
        prop.put("mail.smtp.port", 465); 
        prop.put("mail.smtp.auth", "true"); 
        prop.put("mail.smtp.ssl.enable", "true"); 
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(mailAddress)); 

            // Subject
            message.setSubject("NaturalSkin입니다."); //메일 제목을 입력

            // Text
            message.setText("-고객님의 소중한 정보입니다. -로그인 후 비밀번호를 변경해주세요. - 임시 비밀번호: " + pw);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
