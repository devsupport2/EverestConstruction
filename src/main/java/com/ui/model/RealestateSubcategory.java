package com.ui.model;

public class RealestateSubcategory {

    private int projectId;
	private int realestateSubcategoryId;
	private int realestateTypeId;
	private String subcategoryTitle;
	private String subcategoryCode;
	private String image;
	private String description;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	
	private String realestateTypeName;

	public int getRealestateSubcategoryId() {
		return realestateSubcategoryId;
	}

	public int getRealestateTypeId() {
		return realestateTypeId;
	}

	public String getSubcategoryTitle() {
		return subcategoryTitle;
	}

	public String getSubcategoryCode() {
		return subcategoryCode;
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

	public void setRealestateSubcategoryId(int realestateSubcategoryId) {
		this.realestateSubcategoryId = realestateSubcategoryId;
	}

	public void setRealestateTypeId(int realestateTypeId) {
		this.realestateTypeId = realestateTypeId;
	}

	public void setSubcategoryTitle(String subcategoryTitle) {
		this.subcategoryTitle = subcategoryTitle;
	}

	public void setSubcategoryCode(String subcategoryCode) {
		this.subcategoryCode = subcategoryCode;
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

	public String getRealestateTypeName() {
		return realestateTypeName;
	}

	public void setRealestateTypeName(String realestateTypeName) {
		this.realestateTypeName = realestateTypeName;
	}

    public int getProjectId() {
      return projectId;
    }
  
    public void setProjectId(int projectId) {
      this.projectId = projectId;
    }
  	
}
