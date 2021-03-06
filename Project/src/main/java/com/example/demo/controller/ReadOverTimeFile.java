package com.example.demo.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.EmployeeDao;

@Service
public class ReadOverTimeFile {
	
	
	private Scanner x;

	@Autowired
	private EmployeeDao employeeDao;

		
		
		public void open(String path) {
			
			 try {
				x= new Scanner(new File(path));
				
			} catch (FileNotFoundException e) {
				System.out.println("File not found");
			}
			
		}
		
		public void read() {
			
			while(x.hasNext()) {
				
				int a =x.nextInt();
				String b =x.next();
				String c =x.next();
				String d =x.next();
				
				System.out.println("");
				employeeDao.uploadOverTime(a, b, c, d);
				
				
		}
			
		}
		
		public void close() {
			x.close();
			
		}
		
	
	

}
