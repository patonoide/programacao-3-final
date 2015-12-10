package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Cliente;
import modelo.Hotel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-12-08T21:26:00")
@StaticMetamodel(Quarto.class)
public class Quarto_ { 

    public static volatile SingularAttribute<Quarto, String> numero;
    public static volatile SingularAttribute<Quarto, String> idquarto;
    public static volatile SingularAttribute<Quarto, Hotel> idhotel;
    public static volatile SingularAttribute<Quarto, Cliente> idcliente;

}