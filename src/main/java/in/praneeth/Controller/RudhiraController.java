package in.praneeth.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.praneeth.Entity.PersonaDetails;
import in.praneeth.Service.RudhiraServiceInterface;
@Controller
@RequestMapping("/user")
public class RudhiraController {
	@Autowired
	private RudhiraServiceInterface inter;
	
	static {
		System.out.println("CONTROLLER PAGE IS READY");
	}
	
	@GetMapping("/savedata")
	public String SaveData(@ModelAttribute PersonaDetails details,Model model) {
		model.addAttribute("details", new PersonaDetails());
		return "Landing";
	}
	@GetMapping("/saveddata")
	public String SaveData1(@ModelAttribute PersonaDetails details,Model model) {
		model.addAttribute("details", new PersonaDetails());
		return "Register";
	}
	@PostMapping("/display")
	public String DisplayData(@ModelAttribute PersonaDetails details,Model model) {
		inter.save(details);
		System.out.println(details);
		model.addAttribute("details", inter.findAll());
		
		return "Data";
	}
	@PostMapping("/display2")
	public String DeleteData(Model model,@ModelAttribute PersonaDetails details) {
		   inter.DeleteObject(details);
		model.addAttribute("details",inter.findAll());
		return "Data";
	}
	
	//****************************************************************************************************************************************//
	
	//THIS IS FOR THE END-USER//
	//NEED TO REMOVE IN THE EXECUTION PART//
	@PostMapping("/success")
	public String SuccessPage(@ModelAttribute PersonaDetails details, Model model) {
		inter.save(details);
		return "Success";
	}
	//****************************************************************************************************************************************//
	
	//THIS IS FOR THE CLIENT//
	@GetMapping("/clientdata")
	public String getData(@ModelAttribute PersonaDetails details ,Model model) {
		model.addAttribute("details", inter.findAll());
		return "getData";
	}
	
	//****************************************************************************************************************************************//
	//THIS IS TO FIND THE DONARS//
	@GetMapping("/finddonars")
	public String FindDonarsPage(@ModelAttribute PersonaDetails details,Model model) {
		model.addAttribute("details", new PersonaDetails());
		return "FindDonars";
	}
	@PostMapping("/donarslist")
	public String FindDonars(Model model,@RequestParam String bloodgroup,@RequestParam String city,@RequestParam String district,@RequestParam Long pincode ,@ModelAttribute PersonaDetails details) {
	model.addAttribute("details",inter.FindByDetails(bloodgroup, city, district, pincode));
		return "DonarsList";
	}
	
	
	
	

}
