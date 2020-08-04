  
package cl.nacho.service;

import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cl.nacho.conf.modal.dao.*;
import cl.nacho.conf.modal.entity.Usuario;

@Service
public class AuthServiceImpl  implements UserDetailsService {
    
    private Logger logger = LoggerFactory.getLogger(AuthServiceImpl.class);
    
    @Autowired
    private UsuarioDao daoUsuario;

    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {

        Usuario usuario = daoUsuario.findByEmail(username).orElse(null);
        User usuarioSistema = null;
        
        if(usuario != null) {
            String rol = usuario.getRol().toString();
            String username_ = usuario.getEmail();
            String password_ = usuario.getContrasena();
            String nombre    = usuario.getNombre();
            logger.warn("el usuario encontrado, nonbre :" + nombre);
           
            
            // agregamos el rol a la lista de roles
            List<SimpleGrantedAuthority> roles = Arrays.asList(new SimpleGrantedAuthority(rol));
            // acá se hace el login !!!
            usuarioSistema = new User(username_, password_, roles);

        }else {
            logger.warn("el usuario no pudo ser encontrado, username :" + username);
        }
        
        return usuarioSistema;
    }

}