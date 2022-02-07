package com.ui.model;

public class Realestate {
    
    private int projectId;
	private int realestateId;
	private int realestateTypeId;
	private int realestateSubcategoryId;
	private String realestateTitle;
	private String realestateCode;
	private String image;
	private String description;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;

	public int getRealestateId() {
		return realestateId;
	}

	public int getRealestateTypeId() {
		return realestateTypeId;
	}

	public int getRealestateSubcategoryId() {
		return realestateSubcategoryId;
	}

	public String getRealestateTitle() {
		return realestateTitle;
	}

	public String getRealestateCode() {
		return realestateCode;
	}

	public String getImage() {
		return image;
	}

	public String getDescription() {
		return description;
	}

	public String getStatus() {
		return status;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setRealestateId(int realestateId) {
		this.realestateId = realestateId;
	}

	public void setRealestateTypeId(int realestateTypeId) {
		this.realestateTypeId = realestateTypeId;
	}

	public void setRealestateSubcategoryId(int realestateSubcategoryId) {
		this.realestateSubcategoryId = realestateSubcategoryId;
	}

	public void setRealestateTitle(String realestateTitle) {
		this.realestateTitle = realestateTitle;
	}

	public void setRealestateCode(String realestateCode) {
		this.realestateCode = realestateCode;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

  public int getProjectId() {
    return projectId;
  }

  public void setProjectId(int projectId) {
    this.projectId = projectId;
  }

}
