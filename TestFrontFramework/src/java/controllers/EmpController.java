/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import annotation.UrlAnnotation;
import java.util.List;
import model.Emp;
import service.EmpService;
import utility.ModelView;

/**
 *
 * @author HP
 */
public class EmpController {
    
    private Emp emp;
    private EmpService empService;

    public Emp getEmp() {
        return emp;
    }

    public void setEmp(Emp emp) {
        this.emp = emp;
    }
    
    @UrlAnnotation(lien = "create-emp")
    public ModelView createEmpPage(){
        ModelView modelView = new ModelView();
        modelView.setPage("ajouter-emp.jsp");
        return modelView;
    }
    
    @UrlAnnotation(lien = "add-emp")
    public ModelView addEmp() throws Exception{
        ModelView modelView = new ModelView();
        empService = new EmpService();
        try{
            empService.ajouter(emp);
            modelView.setPage("create-emp.do?success");
        }catch(Exception e){
            modelView.setPage("create-emp.do?fail");
        }
        return modelView;
    }
    
    @UrlAnnotation(lien = "lesEmps")
    public ModelView listEmp() throws Exception{
        ModelView modelView = new ModelView();
        empService = new EmpService();
        List<Emp> lesEmp = empService.lister();
        modelView.addData("emps", lesEmp);
        modelView.setPage("liste-emp.jsp");
        return modelView;
    }
}
