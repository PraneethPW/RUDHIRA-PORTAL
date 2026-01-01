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
import org.springframework.web.bind.annotation.ResponseBody;

import in.praneeth.Entity.PersonaDetails;
import in.praneeth.Service.RudhiraServiceInterface;

	

@Controller
public class RudhiraController {

    @Autowired
    private RudhiraServiceInterface inter;

    static {
        System.out.println("CONTROLLER PAGE IS READY");
    }

    @GetMapping("/")
    public String landing(@ModelAttribute PersonaDetails details, Model model) {
        model.addAttribute("details", new PersonaDetails());
        return "Landing";   // /WEB-INF/view/Landing.jsp
    }

    @GetMapping("/saveddata")
    public String saveData(@ModelAttribute PersonaDetails details, Model model) {
        model.addAttribute("details", new PersonaDetails());
        return "Register";
    }

    @PostMapping("/donarslist")
    public String findDonars(
            Model model,
            @RequestParam String bloodgroup,
            @RequestParam String city,
            @RequestParam String district,
            @RequestParam Long pincode,
            @ModelAttribute PersonaDetails details
    ) {
        model.addAttribute("details", inter.FindByDetails(bloodgroup, city, district, pincode));
        return "DonarsList";
    }

    @PostMapping("/clientdata")
    public String donarDetailsAll(Model model, @ModelAttribute PersonaDetails details) {
        model.addAttribute("details", inter.findAll());
        return "DonarDetailsAll";
    }

    @PostMapping("/success")
    public String successPage(@ModelAttribute PersonaDetails details, Model model) {
        inter.save(details);
        return "Success";
    }

    @GetMapping("/finddonars")
    public String findDonarsPage(@ModelAttribute PersonaDetails details, Model model) {
        model.addAttribute("details", new PersonaDetails());
        return "FindDonars";
    }

    @GetMapping("/healthcheck")
    @ResponseBody
    public String healthcheck() {
        return "OK from Railway";
    }
}

