package cl.nacho.conf.modal.dto;


import java.util.List;

import org.springframework.stereotype.Component;

import cl.nacho.conf.modal.entity.Vehiculo;
import cl.nacho.conf.modal.entity.Viaje;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
@Data
public class ViajeDto {
			private List<Viaje> viaje;
}
