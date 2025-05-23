package pe.edu.vallegrande.inventaStore.service;

import pe.edu.vallegrande.inventaStore.model.Buy;

import java.util.List;
import java.util.Optional;

public interface BuyService {

    List<Buy> findAll();

    Optional<Buy> findById(Long identifier);

    Buy save(Buy buy);

    // Puedes agregar update o delete si en el futuro los necesitas
}
