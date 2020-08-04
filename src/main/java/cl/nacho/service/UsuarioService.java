package cl.nacho.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.nacho.conf.modal.dao.UsuarioDao;
import cl.nacho.conf.modal.entity.Usuario;

@Service
public class UsuarioService {
    
    private Logger logger = LoggerFactory.getLogger(UsuarioService.class);
    
    
    
    @Autowired
    private UsuarioDao dao;

    public Usuario registrarUsuario(Usuario usuario) {
        
        Usuario usuarioEnBase = dao.findByEmail(usuario.getEmail()).orElse(null);
        
        if(usuarioEnBase != null) {
            logger.warn("El usuario que desea ingresar ya existe");
        }else {
        	dao.save(usuario);
        }
        
        return usuario;
    }
    
    
    
}


















