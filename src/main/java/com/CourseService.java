package com;

import java.util.ArrayList;

public class CourseService {
	private ArrayList<Course> courses = new ArrayList<Course>();
	private Course course = new Course();
	
	public CourseService() {
		courses.add(new Course("P1001","Basic Java Programming",5,5000));
		courses.add(new Course("W1002","Java Web Development",4,6500));
		courses.add(new Course("A1003","Application Development",4,6500));
		courses.add(new Course("D1004","Database Manage",4,6500));
	}

	public ArrayList<Course> getCourses() {
		return courses;
	}

	public void setCourses(ArrayList<Course> courses) {
		this.courses = courses;
	}

	public Course getCourse(int p) {
		return this.course = course ;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

}

	
