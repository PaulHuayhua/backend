package pe.edu.vallegrande.inventaStore.repository;

import pe.edu.vallegrande.inventaStore.model.Sale;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SaleRepository extends JpaRepository<Sale, Long> {
    // Aquí puedes agregar consultas personalizadas si las necesitas
}
