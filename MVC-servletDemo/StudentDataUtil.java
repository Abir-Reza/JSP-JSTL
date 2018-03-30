/* Helps for Modeling  */

package com.servletDemo.mvc;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {
		
		// create an empty array list
		List<Student> students = new ArrayList<>();
		
		// add sample data
		students.add(new Student("abir", "reza", "abir@gmail.com"));
		students.add(new Student("jahir", "naim", "naim@gmail.com"));
		students.add(new Student("jahid", "reza", "arif@gmail.com"));
		//return the list
		
		return students;
	}
}
