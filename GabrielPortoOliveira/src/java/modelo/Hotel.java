/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import javax.persistence.Table;

/**
 *
 * @author paton
 */
@Entity
@Table(name = "hotel")
@NamedQueries({
    @NamedQuery(name = "Hotel.findAll", query = "SELECT h FROM Hotel h")})
    @NamedQuery(name = "Hotel.findByCnpj", query = "SELECT h FROM Hotel h where h.cnpj like :cnpj")
public class Hotel implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idhotel")
    private String idhotel;
    @Basic(optional = false)
    @Column(name = "cep")
    private String cep;
    @Basic(optional = false)
    @Column(name = "cnpj")
    private String cnpj;
    

    public Hotel() {
    }

    public Hotel(String idhotel) {
        this.idhotel = idhotel;
    }

    public Hotel(String idhotel, String cep, String cnpj) {
        this.idhotel = idhotel;
        this.cep = cep;
        this.cnpj = cnpj;
    }

    public String getIdhotel() {
        return idhotel;
    }

    public void setIdhotel(String idhotel) {
        this.idhotel = idhotel;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idhotel != null ? idhotel.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Hotel)) {
            return false;
        }
        Hotel other = (Hotel) object;
        if ((this.idhotel == null && other.idhotel != null) || (this.idhotel != null && !this.idhotel.equals(other.idhotel))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return idhotel;
    }
    
}
