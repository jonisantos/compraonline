package br.com.compraonline.cotrollers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(){
		System.out.println("Exibindo a home ");
		return "home";
	}
}
