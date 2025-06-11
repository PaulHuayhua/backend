package pe.edu.vallegrande.inventaStore.service.impl;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.edu.vallegrande.inventaStore.model.Purchase;
import pe.edu.vallegrande.inventaStore.repository.PurchaseRepository;
import pe.edu.vallegrande.inventaStore.service.PurchaseService;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class PurchaseServiceImpl implements PurchaseService {

    private final PurchaseRepository buysRepository;

    @Autowired
    public PurchaseServiceImpl(PurchaseRepository buysRepository) {
        this.buysRepository = buysRepository;
    }

    @Override
    public List<Purchase> findAll() {
        return buysRepository.findAll();
    }

    @Override
    public Optional<Purchase> findById(Long identifier) {
        return buysRepository.findById(identifier);
    }

    @Override
    public Purchase save(Purchase buys) {
        return buysRepository.save(buys);
    }

    @Override
    public Purchase update(Purchase buys) {
        if (buys.getIdentifier() == null || !buysRepository.existsById(buys.getIdentifier())) {
            throw new RuntimeException("Buys with identifier " + buys.getIdentifier() + " does not exist");
        }
        return buysRepository.save(buys);
    }
}
