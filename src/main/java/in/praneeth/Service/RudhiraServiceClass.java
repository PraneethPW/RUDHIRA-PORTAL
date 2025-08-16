package in.praneeth.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.praneeth.Entity.PersonaDetails;
import in.praneeth.SRudhira.RudhiraRepoInterface;
@Service
public class RudhiraServiceClass implements RudhiraServiceInterface {
	@Autowired
	private RudhiraRepoInterface repo;

	@Override
	public PersonaDetails save(PersonaDetails details) {
		return repo.save(details);
		
	}

	@Override
	public List<PersonaDetails> findAll() {
		return (List<PersonaDetails>) repo.findAll();
	}

	
	@Override
	public void DeleteObject(PersonaDetails details) {
		Optional<PersonaDetails> opt=repo.findById(details.getId());
		if(opt!=null) {
	        repo.delete(details);
	        
		}else {
			System.out.println("NO REORD FOUND");
		}

}

	@Override
	public PersonaDetails saveUpdate(PersonaDetails details) {
		return repo.save(details);
		
	}

	@Override
	public List<PersonaDetails> FindByDetails(String bloodgroup, String city, String district, Long pincode) {
		return (List<PersonaDetails>) repo.findAll();
	}

	@Override
	public Optional<PersonaDetails> findById(Integer id) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}
		

	
	
	
}
