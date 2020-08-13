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

        return null; // acá la vista que carga viajes si no existe la borras después
    }

    @PostMapping
    public String ingresar(
        @ModelAttribute Viaje viaje,
        ModelMap mapa){

            // acá ingresas lo que llega del formulario, eso se hace con el mapa.put? no, eso le manda desde el controlador a la vista, desde la vista al controlador @ModelAttribute Viaje viaje,
            viajeService.ingresar(viaje);
            // donde está la vista?
            // el modelo? entidades?
            
            return null; // acá la vista que use esto o puedes hacer un redirect despues de ingresar para que este método no sea tan grande
    }

}