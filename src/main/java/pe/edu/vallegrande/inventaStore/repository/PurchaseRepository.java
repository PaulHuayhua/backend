package pe.edu.vallegrande.inventaStore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pe.edu.vallegrande.inventaStore.model.Purchase;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Long> {

}
