package DTOs;

import java.util.List;

import es.unican.tfg.model.Experiment;
import es.unican.tfg.model.Measure;
import es.unican.tfg.model.ResearchCenter;
import es.unican.tfg.model.Sample;

public class ExperimentDTO {

	private long id;
	private String name;
	private String description;
	private ResearchCenter creator;
	private List<Sample> material;
	//private List<ResearchCenter> participants;
	private List<Measure> measures;

	//Empty constructor
	public ExperimentDTO() {}
	
	
	/**
	 * @param name
	 * @param description
	 * @param creator
	 * @param material
	 * @param participants
	 * @param measures
	 */
	public ExperimentDTO(Experiment e) {
		super();
		this.id = e.getId();
		this.name = e.getName();
		this.description = e.getDescription();
		this.material = e.getMaterial();
		this.measures = e.getMeasures();
	}


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Sample> getMaterial() {
		return material;
	}

	public void setMaterial(List<Sample> material) {
		this.material = material;
	}

	public ResearchCenter getCreator() {
		return creator;
	}

	public void setCreator(ResearchCenter creator) {
		this.creator = creator;
	}

	public List<Measure> getMeasures() {
		return measures;
	}

	public void setMeasures(List<Measure> measures) {
		this.measures = measures;
	}
	
	
	
	
}
