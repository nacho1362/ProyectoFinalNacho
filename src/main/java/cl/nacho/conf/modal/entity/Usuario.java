package cl.nacho.conf.modal.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import cl.nacho.conf.EncoderUtils;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Usuario {
	
	 @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Setter @Getter private Integer id;
	@Setter @Getter private String nombre;
	@Setter @Getter private Integer telefono;
	@Setter @Getter private String correo;
	@Getter private String contrasenia;
	@Setter @Getter private Rol rol;
	
	public void setContrasenia(String contrasenia) {
        this.contrasenia = EncoderUtils.passwordEncoder().encode(contrasenia);
    }
	
	@OneToMany( cascade = CascadeType.ALL , mappedBy = "usuario", orphanRemoval = true)
	private List<Viaje> viajes = new ArrayList<>();
	
	@OneToMany( cascade = CascadeType.ALL , mappedBy = "usuario", orphanRemoval = true)
	private List<Vehiculo> vehiculos = new ArrayList<>();
}
