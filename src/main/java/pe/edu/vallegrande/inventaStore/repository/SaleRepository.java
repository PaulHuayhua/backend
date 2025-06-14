package pe.edu.vallegrande.inventaStore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pe.edu.vallegrande.inventaStore.model.Sale;

@Repository
public interface SaleRepository extends JpaRepository<Sale, Long> {
    
}
