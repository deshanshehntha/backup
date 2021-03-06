package com.example.demo.service;

import org.hibernate.cfg.Environment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.autoconfigure.couchbase.CouchbaseProperties.Env;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;

@Service
public class EmailNotification {

	private JavaMailSender javaMailSender;
	
	@Autowired
	public EmailNotification(JavaMailSender javaMailSender) {
		this.javaMailSender=javaMailSender;
		
	}
	
	public void sendEmail(Employee  e) {
		
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(e.getEmail());
		simpleMailMessage.setFrom("springTest123456@gmail.com");
		simpleMailMessage.setSubject("Welcome to Automated Barcode Solutions(pvt)Ltd");
		simpleMailMessage.setText("Its working");
		simpleMailMessage.setText(e.getUserName());
		simpleMailMessage.setText(e.getPassword());
		
		javaMailSender.send(simpleMailMessage);
		
	}
	
	
	
}
