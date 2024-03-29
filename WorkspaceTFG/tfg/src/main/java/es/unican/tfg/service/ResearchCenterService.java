package es.unican.tfg.service;

import java.nio.charset.StandardCharsets;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.google.common.hash.Hashing;

import es.unican.tfg.model.Experiment;
import es.unican.tfg.model.ResearchCenter;
import es.unican.tfg.repository.ExperimentRepository;
import es.unican.tfg.repository.ResearchCenterRepository;

@Service
public class ResearchCenterService implements IResearchCenterService{	

	@Autowired
	private ResearchCenterRepository centerRepository;
	
	@Autowired
	private ExperimentRepository experimentRepository;


	public List<ResearchCenter> researchCenters() {
		return centerRepository.findAll();
	}

	public ResearchCenter researchCenterById(Long id) {
		return centerRepository.findById(id).orElse(null);
	}
	
	public ResearchCenter researchCenterByEmail(String email) {
		ResearchCenter rc = centerRepository.findByEmail(email);
		return rc;
	}
	
	
	public boolean checkPassword (String introducedPassword, String storedPassword) {
		String hashedPassword = Hashing.sha256()
				  .hashString(introducedPassword, StandardCharsets.UTF_8)
				  .toString();
		//Check if the password matches the stored one
		if (storedPassword.equals(hashedPassword))
			return true;
		return false;
	}
	
	

	public ResearchCenter createResearchCenter(ResearchCenter r) {	
		if (centerRepository.findByName(r.getName()) == null && centerRepository.findByEmail(r.getEmail()) == null)//if null it creates the experiment
			return centerRepository.save(r);
		return null;
	}

	public ResearchCenter modifyResearchCenter(ResearchCenter r) {
		if (centerRepository.findById(r.getId()) == null)//if null it return null
			return null;
		return centerRepository.save(r);
	}

	public ResearchCenter deleteResearchCenter(Long id) {
		ResearchCenter e = centerRepository.findById(id).orElse(null);
		if (e == null)
			return null;
		centerRepository.deleteById(e.getId());
		return e;
	}

	
	public List<Experiment> experiments(String email, boolean creator){
		ResearchCenter rc = researchCenterByEmail(email);
		
		if(rc == null) {
			return null;
		}
		
		List<Experiment> experiments = null;
		if(creator) { //To get the experiments where the given Center is the creator
			experiments = experimentRepository.findByCreator(rc);
		} else { //To get the experiments where the given center is a participant
			experiments = experimentRepository.findByParticipants(rc);
		}
		return experiments;
	}


}
