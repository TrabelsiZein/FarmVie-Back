 
package com.vape.sec.model;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

@Entity
@Table(name = "Actualite")
@EntityListeners(AuditingEntityListener.class)

public class Actualite {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String subject;
	private String description;
 	private String photo;
 	private Long projectId ;
	private String ProjectName;
	private Long ingId ;
	private String IngName;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return ProjectName;
	}

	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}

	public Long getIngId() {
		return ingId;
	}

	public void setIngId(Long ingId) {
		this.ingId = ingId;
	}

	public String getIngName() {
		return IngName;
	}

	public void setIngName(String ingName) {
		IngName = ingName;
	}

	public Actualite() {
	}
}
