package cl.nacho.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import cl.nacho.conf.modal.dto.UsuarioDto;
import cl.nacho.conf.modal.entity.Usuario;
import cl.nacho.service.UsuarioService;

@Controller
public class RegistrarUsuario {

	@Autowired
	private UsuarioService servicio;
	
	@PostMapping("/registrarUsuariooo")
    public String usuario( @ModelAttribute Usuario usuario) {
        UsuarioDto usuarioDto = servicio.registrarUsuarioo(usuario);
        if(usuarioDto.getUsuario() == null)
            return "usuario";

        return "redirect:index";
    }
	
	
	
}
