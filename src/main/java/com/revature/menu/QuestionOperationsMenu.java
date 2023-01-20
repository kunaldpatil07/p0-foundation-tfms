package com.revature.menu;

import java.util.Scanner;

import org.apache.log4j.Logger;

//import com.revature.constants.Constant;
import com.revature.dao.impl.QuestionManagementService;

public class QuestionOperationsMenu 
{
	private static final Logger logger = Logger.getLogger(QuestionOperationsMenu.class);
	public static void main(String[] args) 
	{
		//UserDaoImpl udi= new UserDaoImpl();
		//udi.getUser();
		UserAuthentication.userAuthentication();
		menuAppForQuestion();
		
	}

	public static void menuAppForQuestion() 
	{
		int choice=0;
		int choices=0;
		Scanner sc=new Scanner(System.in);
		QuestionManagementService qms=new QuestionManagementService();
		do {
			logger.info(" \" \\n\\n!!!!!!!!!!!!!!!Welcome to Question Operation Menu!!!!!!!!!!!!!!!\"");
			logger.info(" 1.Add Questions\n2.Display Questions\nEnter you choice here:");
			choices=sc.nextInt();
			sc.nextLine();
			switch(choices) 
			{
				case 1:	qms.getUserInput();
					break;
				case 2: qms.displayQuestionDetails();
					break;
				
				default:
					logger.info("!!!!!!!!!!!!!Please enter the valid option!!!!!!!!!!!!!!!");
			}
			
			logger.info("\n!!!!!!!!!!!!!Question Menu Page!!!!!!!!!!!\n\nPress 1 to continue to go back to menu\nPress 0 to exit this page\nEnter your choice here:");
			choice=sc.nextInt();
			sc.nextLine();
			} while (choice==1);
		logger.info("\n\n!!!!!!!!!!!!Outside the Question Operations!!!!!!!!!!!!!!");
	}
}