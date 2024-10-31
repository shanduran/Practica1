package com.practica01.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="arbol")
public class Arbol implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    @Column(name="id")
    private Long idArbol;
    private String nombreComun;
    private String tipoFlor;
    private String durezaMadera;
    private float alturaPromedio;
    private String rutaImagen;

    public Arbol() {
    }

    public Arbol(String nombreComun, String tipoFlor, 
            String durezaMadera, float alturaPromedio, String rutaImagen) {
        this.nombreComun = nombreComun;
        this.tipoFlor = tipoFlor;
        this.durezaMadera = durezaMadera;
        this.alturaPromedio = alturaPromedio;
        this.rutaImagen = rutaImagen;
    }
}
