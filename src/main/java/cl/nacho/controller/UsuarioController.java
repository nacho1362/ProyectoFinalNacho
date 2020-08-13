package cl.nacho.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cl.nacho.conf.modal.dto.UsuarioDto;
import cl.nacho.conf.modal.entity.Usuario;
import cl.nacho.service.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

	@Autowired
	private UsuarioService servicio;	
    
    @GetMapping
    public String admin(ModelMap modelo) {
        // capturo el nombre de usuario
        Authentication auth = SecurityContextHolder.getContext()
                .getAuthentication();
        String name = auth.getName();
        modelo.addAttribute("username", name);

        return "usuario/vistaUsuario";
    }
    
    @PostMapping
    public String usuario( @ModelAttribute Usuario usuario) {
        UsuarioDto usuarioDto = servicio.registrarUsuario(usuario);
        if(usuarioDto.getUsuario() == null)
            return "admin";

        return "redirect:home";
    }	
}
