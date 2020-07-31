package cl.nacho.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/gestionDeUsuarios")
public class GestionUsuariosController {

	@GetMapping
	public String gestiondeUsuarios() {
		return "admin/gestionDeUsuarios";
	}
}
