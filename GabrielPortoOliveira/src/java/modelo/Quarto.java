/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author paton
 */
@Entity
@Table(name = "quarto")
@NamedQueries({
    @NamedQuery(name = "Quarto.findAll", query = "SELECT q FROM Quarto q")})
    @NamedQuery(name = "Quarto.findByName", query = "SELECT q FROM Quarto q where q.numero like :numero")
    
public class Quarto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idquarto")
    private String idquarto;
    @Basic(optional = false)
    @Column(name = "numero")
    private String numero;
    @JoinColumn(name = "idcliente", referencedColumnName = "idcliente")
    @ManyToOne
    private Cliente idcliente;
    @JoinColumn(name = "idhotel", referencedColumnName = "idhotel")
    @ManyToOne
    private Hotel idhotel;

    public Quarto() {
    }

    public Quarto(String idquarto) {
        this.idquarto = idquarto;
    }

    public Quarto(String idquarto, String numero) {
        this.idquarto = idquarto;
        this.numero = numero;
    }

    public String getIdquarto() {
        return idquarto;
    }

    public void setIdquarto(String idquarto) {
        this.idquarto = idquarto;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public Cliente getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(Cliente idcliente) {
        this.idcliente = idcliente;
    }

    public Hotel getIdhotel() {
        return idhotel;
    }

    public void setIdhotel(Hotel idhotel) {
        this.idhotel = idhotel;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idquarto != null ? idquarto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Quarto)) {
            return false;
        }
        Quarto other = (Quarto) object;
        if ((this.idquarto == null && other.idquarto != null) || (this.idquarto != null && !this.idquarto.equals(other.idquarto))) {
            return false;
        }
        return true;
    }
    

    @Override
    public String toString() {
        return   numero;
    }
    
}
