package com.hr.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents(){
		
		//create an empty list
		List<Student> students=new ArrayList<>();
		
		//add sample data
		students.add(new Student("Elite","Public","elitepublic@gmail.com"));
		students.add(new Student("John","Cena","johncena@gmail.com"));
		students.add(new Student("Elly","Angel","ellyangel@gmail.com"));
		students.add(new Student("Joya","Chaudhary","joyach@gmail.com"));
		
		//return the list
		return students;
		
	}
	
}
