package pe.edu.vallegrande.inventaStore.model;

import jakarta.persistence.*;
import lombok.Data;
import java.math.BigDecimal;

@Entity
@Data
@Table(name = "buys_detail")
public class PurchaseDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "identifier")
    private Long identifier;

    @Column(name = "amount", nullable = false)
    private Integer amount;

    @Column(name = "subtotal", nullable = false, precision = 10, scale = 2)
    private BigDecimal subtotal;

    @Column(name = "product_identifier", nullable = false)
    private Long product_identifier;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "buys_identifier")
    private Purchase buys;
}
