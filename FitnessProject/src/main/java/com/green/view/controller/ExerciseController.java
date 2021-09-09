package com.green.view.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExerciseController {
	
	
	@RequestMapping(value = "dumbell", method = RequestMethod.GET)
	public String login_form() {
		System.out.println("덤벨 리스트 페이지 이동");
		return "exercise/dumbell";
	}
}
