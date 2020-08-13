 package cl.nacho.conf.modal.entity;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
@Entity
public class Destino implements Serializable{
	private static final long serialVersionUID = -8371956601591440107L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private Integer precio;
	private Integer kilometros;
	private String nombreDestino;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "viaje_id")
	private Viaje viaje;

//destinoo 

}
