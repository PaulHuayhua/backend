package pe.edu.vallegrande.inventaStore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pe.edu.vallegrande.inventaStore.model.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    // Buscar productos por estado (ej. "A" activo o "I" inactivo)
    List<Product> findByState(String state);

    // Buscar productos por nombre (contiene texto, ignorando mayúsculas)
    List<Product> findByNameContainingIgnoreCase(String name);

}
