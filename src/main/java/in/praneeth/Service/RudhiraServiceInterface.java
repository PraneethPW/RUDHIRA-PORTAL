package in.praneeth.Service;

import java.util.List;
import java.util.Optional;

import in.praneeth.Entity.PersonaDetails;

public interface RudhiraServiceInterface {
	
	public PersonaDetails save(PersonaDetails details);
	public void DeleteObject(PersonaDetails details);
	public PersonaDetails saveUpdate(PersonaDetails details);
	public List<PersonaDetails> FindByDetails(String bloodgroup,String city,String district,Long pincode);
  public List<PersonaDetails> findAll();
	
	
	

}
