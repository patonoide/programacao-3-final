
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Quarto;


public class QuartoDAO {
    EntityManager em;
    
    public QuartoDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(Quarto obj) throws Exception {
        
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
    
    public List<Quarto> listar() throws Exception {
        
        return em.createNamedQuery("Quarto.findAll").getResultList();
        
        
        
    }
    public List<Quarto> listar(String numero) throws Exception {
        //PassO o parâmetro pra query
        TypedQuery<Quarto> query
                = em.createNamedQuery("Quarto.findByName", Quarto.class);

        //Seto o parâmetro
        query.setParameter("numero", '%' + numero + '%');
        //Retorno minha lista
        return query.getResultList();
    }

    
    public void alterar(Quarto obj) throws Exception {
        
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
    
    public void excluir(Quarto obj) throws Exception {
        
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
     public Quarto buscarPorChavePrimaria(String idquarto){
        return em.find(Quarto.class, idquarto);
    
}
    public void fechaEmf() {
        
        Conexao.closeConexao();
        
    }
    
}
