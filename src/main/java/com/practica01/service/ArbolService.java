package com.practica01.service;

import com.practica01.domain.Arbol;
import java.util.List;

public interface ArbolService {
    
    // Se obtiene un listado de categorias en un List
    public List<Arbol> getArboles(boolean activos);
}