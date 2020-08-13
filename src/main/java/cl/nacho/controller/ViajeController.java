package cl.nacho.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.nacho.conf.modal.entity.Viaje;
import cl.nacho.service.ViajeService;

@RequestMapping("/viajes")
class ViajeController {

    @Autowired
    private ViajeService viajeService;

    @GetMapping
    public String index(ModelMap mapa) {
        
        mapa.put("viajes", viajeService);

        return "/vistaUsuario"; 
    }

    @PostMapping
    public String ingresar() {
//        @ModelAttribute Viaje viaje,
//        ModelMap mapa){
//            viajeService.ingresar(viaje);
  return "/vistaUsuario";
    }

}