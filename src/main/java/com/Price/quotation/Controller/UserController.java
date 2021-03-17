package com.Price.quotation.Controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
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

import com.Price.quotation.Model.Admin;
import com.Price.quotation.Model.Product;
import com.Price.quotation.Model.User;
import com.Price.quotation.Service.ProductService;
import com.Price.quotation.Service.UserService;

@Controller
@SessionAttributes({"name"})
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    ProductService productservice;
    
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String UserFront(@ModelAttribute("user") User userView) {
        return "user";
    }
    
    @RequestMapping(value="/userRegister",method = RequestMethod.POST)
    public String UserRegistration(@ModelAttribute("user")User userReg,ModelMap model){
        if(userService.addUser(userReg)) {
            model.put("status", "Your details are submitted successfully");
        }
        else {
            model.put("status", "User Id is already used");
        }
        
        return "user";
    }
    
    @RequestMapping(value="/userLogin", method=RequestMethod.GET)
    public String userLoginDisplay(@ModelAttribute("user") User user) {
        return "userLogIn";
    }
   
    @RequestMapping(value="/userSuccessLogin", method=RequestMethod.POST)
    public String userLogin(HttpServletRequest request,@ModelAttribute("user") User user,BindingResult result,ModelMap model) {
        
        if(result.hasErrors())
        {
            return "userLogIn";
        }
        
        
        List<User> userList = userService.getUser();
        for(User user1 : userList)
        {
            if(user1.getUserId().equals(user.getUserId()) && user1.getPassword().equals(user.getPassword()))
            {     
               model.put("name", user.getUserId());
               return "userSuccessLogin";
            }
        }
	    model.put("error", "Wrong Credentials");
	    return "userLogIn";
       
    }
    @RequestMapping("/userSuccessLogin")    
    public String viewUser(Model m){    
        List<User> list=userService.getUser();    
        m.addAttribute("list",list);  
        return "userSuccesslogin";    
    }   
    @RequestMapping(value = "/userLogOut", method = RequestMethod.GET)
	public String userLogout(@ModelAttribute("user") User user) {
		return "userLogIn";
	}
    @RequestMapping(value = "/viewUser", method = RequestMethod.GET)
	public String viewUser(@ModelAttribute("user") User user) {
		return "viewUser";
	}
    @RequestMapping(value="/editProfile/{id}")    
    public String edit(@PathVariable int id, Model m){    
        User profile=userService.getUserById(id);    
        m.addAttribute("command",profile);  
        return "userEditForm";    
    }    
    /* It updates model object. */    
    @RequestMapping(value="/usereditsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("profile") User user){    
        userService.update(user);    
        return "userSuccessLogin";    
    } 
    @RequestMapping("/userProductView")    
    public String viewproduct(Model m){    
        List<Product> list=productservice.getProduct();    
        m.addAttribute("list",list);  
        return "userProductView";    
    }  
    @RequestMapping("/back")
    public String back(Model m) {
    	return "userSuccessLogin";
    }
    @RequestMapping("/myOrders")
    public String myOrders(Model m) {
    	List<Product> list=productservice.getOrder();
    	m.addAttribute("list", list);
    	return "myOrders";
    }
    @RequestMapping("/feedback")
    public String feedback(Model m) {
    	return "feedback";
    }
    @RequestMapping("/finalPage")
    public String finalPage(Model m) {
    	return "finalPage";
    }
   
}