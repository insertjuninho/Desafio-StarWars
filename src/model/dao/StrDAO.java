package model.dao;


import control.conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.Atributo;

public class StrDAO {
    
    public void create(Atributo a){
        
        Connection con = conexao.getConnection();
        PreparedStatement stmt = null;
        
        try {    
            stmt = con.prepareStatement("INSERT INTO starwars (planeta,clima,terreno) VALUES (?,?,?)");
            stmt.setString(1,a.getPlaneta());
            stmt.setString(2,a.getClima());
            stmt.setString(3,a.getTerreno());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Salvo com Sucesso");
                    
        } catch (SQLException ex) {
           
            JOptionPane.showMessageDialog(null,"Erro ao salvar"+ex);
            
        }finally{
            
            conexao.CloseConection(con,stmt);
            
            
        }
        
    }
    public void delete(Atributo a){
        
        Connection con = conexao.getConnection();
        PreparedStatement stmt = null;
        
        try {    
            stmt = con.prepareStatement("DELETE  FROM starwars WHERE id = ?");
            stmt.setInt(1,a.getId());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Excluido com Sucesso");
                    
        } catch (SQLException ex) {
           
            JOptionPane.showMessageDialog(null,"Erro ao excluir"+ex);
            
        }finally{
            conexao.CloseConection(con,stmt);
        }
    }
    
    public List<Atributo> read(){
        
        Connection con = conexao.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        List<Atributo> atributo = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM starwars");
            rs = stmt.executeQuery();
            
        
            while(rs.next()){
                
                Atributo a = new Atributo();
                
                a.setId(rs.getInt("id"));
                a.setPlaneta(rs.getString("planeta"));
                a.setClima(rs.getString("clima"));
                a.setTerreno(rs.getString("terreno"));
                atributo.add(a);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(StrDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
        conexao.CloseConection(con, stmt, rs);
     }
        
        return atributo;
        
    }

   public List<Atributo> readforId(String planeta){
        
        Connection con = conexao.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        List<Atributo> atributo = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM starwars WHERE planeta LIKE %planeta%");
            rs = stmt.executeQuery();
            
        
            while(rs.next()){
                
                Atributo a = new Atributo();
                
                a.setId(rs.getInt("id"));
                a.setPlaneta(rs.getString("planeta"));
                a.setClima(rs.getString("clima"));
                a.setTerreno(rs.getString("terreno"));
                atributo.add(a);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(StrDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
        conexao.CloseConection(con, stmt, rs);
     }
        
        return atributo;
        
    }
    

}
