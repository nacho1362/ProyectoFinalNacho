		package cl.nacho.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cl.nacho.conf.modal.dto.UsuarioDto;
import cl.nacho.conf.EncoderUtils;
import cl.nacho.conf.modal.dao.UsuarioDao;
import cl.nacho.conf.modal.entity.Usuario;

@Service
public class UsuarioService {
private Logger logger = LoggerFactory.getLogger(UsuarioService.class);
    
    @Autowired
    private UsuarioDao dao;

    public UsuarioDto registrarUsuario(Usuario usuario) {
        UsuarioDto usuarioDto = new UsuarioDto();
        
        Usuario usuarioEnBase = dao.findByCorreo(usuario.getCorreo()).orElse(null);
        
        if(usuarioEnBase != null) {
            usuarioDto.setUsuario(usuarioEnBase);
            logger.warn("El usuario que desea ingresar ya existe");
        }else {
            usuarioDto.setUsuario(dao.save(usuario));
        }
        
        return usuarioDto;
    }
    
    public UsuarioDto llenarUsuarios() {
        UsuarioDto usuarioDto = new UsuarioDto(new Usuario(), dao.findAll());

        return usuarioDto;
    }
    
    
	public Usuario createUser(Usuario usuario) {
			String encodedPassword =usuario.getContrasenia();
			usuario.setContrasenia(encodedPassword);
			usuario = dao.save(usuario);
		return usuario;
	}
	
	public UsuarioDto registrarUsuarioo(Usuario usuario) {
        UsuarioDto usuarioDto = new UsuarioDto();
        
        Usuario usuarioEnBase = dao.findByCorreo(usuario.getCorreo()).orElse(null);
        
        if(usuarioEnBase != null) {
            usuarioDto.setUsuario(usuarioEnBase);
            logger.warn("El usuario que desea ingresar ya existe");
        }else {
        	usuario.setContrasenia( EncoderUtils.passwordEncoder().encode(usuario.getContrasenia()));
            usuarioDto.setUsuario(dao.save(usuario));
        }
        
        return usuarioDto;
    }
    
    
}













