package br.com.compraonline.cotrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.compraonline.daos.ProdutoDAO;
import br.com.compraonline.models.Produto;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {

	@Autowired
	private ProdutoDAO dao; 
	
	@RequestMapping("form")
	public ModelAndView form(){
		ModelAndView modelAndView = new ModelAndView();
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView gravar(Produto produto, RedirectAttributes redirectAttributes){
		dao.salvar(produto);
		redirectAttributes.addFlashAttribute("Sucesso", "Produto cadastrado com sucesso!");
		return new ModelAndView("redirect:produtos");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView listar(){
		
		List<Produto> produtos = dao.listar();
		ModelAndView modelAndView = new ModelAndView("produtos/lista");
		modelAndView.addObject("produtos", produtos);
		return modelAndView;
	}
}
