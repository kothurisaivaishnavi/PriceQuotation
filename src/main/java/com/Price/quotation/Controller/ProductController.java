package com.Price.quotation.Controller;

 

import java.util.List;

 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

 

import com.Price.quotation.Model.Product;
import com.Price.quotation.Service.ProductService;

 

@Controller    
public class ProductController {    
    @Autowired    
    ProductService productService;
        
    /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
    //productForm
    @RequestMapping("/productForm")    
    public String showform(Model m){    
        m.addAttribute("command", new Product());  
        return "productForm";   
    }    
        
    @RequestMapping(value="/save", method = RequestMethod.POST)    
    public String productUpdate(@ModelAttribute("product")Product product, ModelMap model){ 
    
        if(productService.save(product))
         {
            model.put("vStatus", "Your details are submitted successfully");
        }
        else {
        	model.put("vStatus", "something went wrong");
        }
        return "productForm";//will redirect to viewproduct request mapping    
    }    
    /* It provides list of employees in model object */ 
    //viewemp
    @RequestMapping("/viewproduct")    
    public String viewproduct(Model m){    
        List<Product> list=productService.getProduct();    
        m.addAttribute("list",list);  
        return "viewproduct";    
    }    
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editProduct/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Product pro=productService.getProductById(id);    
        m.addAttribute("command",pro);  
        return "productEditForm";    
    }    
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("product") Product product){    
        productService.update(product);    
        return "redirect:/viewproduct";    
    }    
    /* It deletes record for the given id in URL and redirects to /viewemp */    
    @RequestMapping(value="/deleteproduct/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        productService.delete(id);    
        return "redirect:/viewproduct";    
    }     
}