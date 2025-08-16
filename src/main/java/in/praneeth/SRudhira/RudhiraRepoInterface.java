package in.praneeth.SRudhira;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import in.praneeth.Entity.PersonaDetails;
@Repository
public interface RudhiraRepoInterface extends CrudRepository<PersonaDetails, Integer> {
	

}
