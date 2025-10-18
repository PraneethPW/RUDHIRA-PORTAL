package in.praneeth.SRudhira;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import in.praneeth.Entity.PersonaDetails;
@Repository
public interface RudhiraRepoInterface extends CrudRepository<PersonaDetails, Integer> {
	
	 // Custom finder method
    List<PersonaDetails> findByBloodgroupAndCityAndDistrictAndPincode(
        String bloodgroup, String city, String district, Long pincode);
}
	


