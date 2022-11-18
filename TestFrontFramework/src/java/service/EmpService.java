/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.DbAccess;
import dbtable.DbTable;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import model.Emp;

/**
 *
 * @author HP
 */
public class EmpService {
    
    public void ajouter(Emp emp) throws Exception{
        try{
            DbAccess dbConnex = new DbAccess();
            emp.insert(dbConnex.getConnection());
        }catch(Exception e){
            throw e;
        }
    }
    
    public List<Emp> lister() throws Exception{
        List<Emp> listeEmp = new ArrayList();
        try{
            DbAccess dbConnex = new DbAccess();
            Emp search = new Emp();
            List<DbTable> result = new ArrayList();
            result = search.find(search, dbConnex.getConnection());
            Emp emp = null;
            for(int i=0;i<result.size();i++){
                emp = (Emp)result.get(i);
                listeEmp.add(emp);
            }
        }catch(Exception e){
            throw e;
        }
        return listeEmp;
    }
}
