
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Hotel;

public class HotelDAO {
    EntityManager em;
    
    public HotelDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(Hotel obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.persist(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } finally {
            
            em.close();
            
        }
        
    }
    
    public List<Hotel> listar() throws Exception {
        
        return em.createNamedQuery("Hotel.findAll").getResultList();
        
    }
    public List<Hotel> listar(String cnpj) throws Exception {
        //PassO o parâmetro pra query
         TypedQuery<Hotel> query = 
                 em.createNamedQuery("Hotel.findByCnpj", Hotel.class);
        
         
         //Seto o parâmetro
         query.setParameter("cnpj", '%' + cnpj + '%');
         //Retorno minha lista
         return query.getResultList();
    }
    
    
    public void alterar(Hotel obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.merge(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
            throw e;
            
        } finally {
            
            em.close();
            
        }
        
    }
    
    public void excluir(Hotel obj) throws Exception {
        
        try {
            
            em.getTransaction().begin();
            
            em.remove(obj);
            
            em.getTransaction().commit();
            
        } catch (RuntimeException e) {
            
            em.getTransaction().rollback();
            
        } finally {
            
            em.close();
            
        }
        
    }
     public Hotel buscarPorChavePrimaria(String idhotel){
        return em.find(Hotel.class, idhotel);
    
}
    public void fechaEmf() {
        
        Conexao.closeConexao();
        
    }
}
