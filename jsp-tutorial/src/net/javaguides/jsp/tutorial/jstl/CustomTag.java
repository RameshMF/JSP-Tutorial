package net.javaguides.jsp.tutorial.jstl;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.Month;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * Simple JSP Custom tag handler
 * @author Ramesh Fadatare
 *
 */
public class CustomTag extends SimpleTagSupport {
	public void doTag() throws IOException {
		/*
		 * This is just to display a message, when we will use our custom tag. This
		 * message would be displayed
		 */
		JspWriter out = getJspContext().getOut();
		out.println("Current Date :: " + LocalDate.now());
		out.println("<br>");
		out.println("Current Time :: " + LocalTime.now());
		out.println("<br>");
		out.println("Print Months");
		for(Month month : Month.values()) {
			out.println(month.name());
			out.println("<br>");
		}
	}
}
