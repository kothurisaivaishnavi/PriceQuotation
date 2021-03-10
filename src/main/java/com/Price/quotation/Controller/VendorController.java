package com.Price.quotation.Controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Price.quotation.Model.User;
import com.Price.quotation.Model.Vendor;
import com.Price.quotation.Service.VendorService;

@Controller
@SessionAttributes({"name"})
public class VendorController {
	@Autowired
	private VendorService vendorService;

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
        
        
        List<Vendor>vendorList = vendorService.read();
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
}