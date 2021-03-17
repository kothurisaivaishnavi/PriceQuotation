package com.Price.quotation.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Price.quotation.Model.Product;
import com.Price.quotation.Model.User;
import com.Price.quotation.Model.Vendor;
import com.Price.quotation.Service.ProductService;
import com.Price.quotation.Service.RequestService;
import com.Price.quotation.Service.UserService;
import com.Price.quotation.Service.VendorService;

@Controller
@SessionAttributes({"name"})
public class VendorController {
	@Autowired
	private VendorService vendorService;
	@Autowired
	ProductService productService;
	@Autowired
	RequestService requestService;
	
	@RequestMapping(value = "/vendor", method = RequestMethod.GET)
	public String VendorFront(@ModelAttribute("vendor") Vendor vendorView) {
		return "vendor";
	}
	
	@RequestMapping(value="/vendorRegister",method = RequestMethod.POST)
	public String vendorRegistration(@ModelAttribute("vendor")Vendor vendorReg,ModelMap model){
        if(vendorService.addVendor(vendorReg)) {
            model.put("vStatus", "Your details are submitted successfully");
        }
        else {
            model.put("vStatus", "Vendor Id is already used");
        }
        
        return "vendor";
    }
    
	@RequestMapping(value="/vendorLogin", method=RequestMethod.GET)
	public String vendorLoginDisplay(@ModelAttribute("vendor") Vendor vendor) {
		return "vendorLogIn";
	}
    
    @RequestMapping(value="/vendorSuccessLogin", method=RequestMethod.POST)
    public String vendorLogin(@ModelAttribute("vendor") Vendor vendor,BindingResult result,ModelMap model) {
        
        if(result.hasErrors())
        {
            return "vendorLogIn";
        }
        
        
        List<Vendor>vendorList = vendorService.getVendor();
        for(Vendor vendor1 : vendorList)
        {
            if(vendor1.getVendorId().equals(vendor.getVendorId()) && vendor1.getPassword().equals(vendor.getPassword()))
            {     
                model.put("name", vendor.getVendorId());
                return "vendorSuccessLogin";
            }
        
        }
        model.put("error", "Wrong Credentials");
        return "vendorLogIn";
    }
    @RequestMapping(value = "/vendorLogOut", method = RequestMethod.GET)
	public String vendorLogout(@ModelAttribute("vendor") Vendor vendor) {
		return "vendorLogIn";
	}
    @RequestMapping("/vendorList")    
    public String vendorList(ModelMap m){    
        List<Vendor> list=vendorService.read();    
        m.addAttribute("list",list);  
        return "vendorList";    
    }    
    @RequestMapping(value="/deleteVendor/{vId}",method = RequestMethod.GET)    
    public String delete(@PathVariable int vId){    
        vendorService.delete(vId);    
        return "redirect:/vendorList";    
    }    

    @RequestMapping(value="/editRequest/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Product pro=productService.getProductById(id);    
        m.addAttribute("command",pro);  
        return "requestEditForm";    
    }    
    /* It updates model object. */    
    @RequestMapping(value="/requesteditsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("product") Product product, Model m){    
        productService.update(product);
        List<Product> list=productService.getProduct();    
        m.addAttribute("list",list);
        return "vendorRequestHandler";    
    }    
    
    @RequestMapping(value="/vendorRequestHandler",method = RequestMethod.GET)
    public String viewRequestHandler(Model m) {
    	  List<Product> list=productService.getProduct();    
          m.addAttribute("list",list);  
          List<User> reqlist=requestService.viewRequest();
          m.addAttribute("reqlist",reqlist);
    	return "vendorRequestHandler";
    }


    @RequestMapping(value="/vendorViewRequest", method = RequestMethod.GET)
    public String request(@ModelAttribute("user") User userRequest) {
    	return "vendorViewRequest";
    }
    
    @RequestMapping(value="/userLogIn", method = RequestMethod.POST)
    public String viewRequest(@ModelAttribute("user") User user, Model m) {
    	requestService.addRequest(user); 
		return "userLogIn";
    	
    }
   
    @RequestMapping(value="/order", method = RequestMethod.GET)
    public String placeorder(Model m) {
    	List<User> list=requestService.viewRequest();
    	m.addAttribute("list",list);
    	return "order";
    }

    @RequestMapping(value="/bill", method = RequestMethod.GET)
    public String bill(Model m) {
    	List<Vendor> list=vendorService.read();    
        m.addAttribute("list",list); 
    	return "bill";
    }
    
}