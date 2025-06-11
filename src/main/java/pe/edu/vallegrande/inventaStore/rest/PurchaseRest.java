package pe.edu.vallegrande.inventaStore.rest;

import pe.edu.vallegrande.inventaStore.model.Purchase;
import pe.edu.vallegrande.inventaStore.service.PurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/v1/api/buys")
public class PurchaseRest {

    private final PurchaseService buysService;

    @Autowired
    public PurchaseRest(PurchaseService buysService) {
        this.buysService = buysService;
    }

    @GetMapping
    public List<Purchase> findAll() {
        return buysService.findAll();
    }

    @GetMapping("/{identifier}")
    public Optional<Purchase> findById(@PathVariable Long identifier) {
        return buysService.findById(identifier);
    }

    @PostMapping("/save")
    public Purchase save(@RequestBody Purchase buys) {
        return buysService.save(buys);
    }

    @PutMapping("/update")
    public Purchase update(@RequestBody Purchase buys) {
        return buysService.update(buys);
    }

}
