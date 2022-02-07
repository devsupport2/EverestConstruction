package com.ui.model;

import java.util.List;

public class Project {
	
	public Project() {
		// TODO Auto-generated constructor stub
	}
	private int projectId;
	private String projectTitle;
	private String projectSubtitle;
	private String projectCode;
	private String projectLogo;
	private int locationId;
	private int architectId;
	private int structuralDesignerId;
	private int legalAdvisorId;
	private int developerCompanyId;
	private String reraApprove;
	private String reraNo;
	private String layoutMap;
	private String waterSource;
	private String drainage;
	private String workStatus;
	private String description;
	private int propertyTypeId;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	private int projectEnquiryCount;
	private String projMainImg;
	private String locationName;
	private String architechName;
	
	private String designerName;
	private String projectPDF;
	private String siteLink;
	private String advisorName;
	private String developerCompanyName;
	private String propertyTypeTitle;
	private String locationCity;
	private String locationMapLink;
	private List<Realestate> realestateNameList;
	private List<RealestateSubcategory> realestateSubNameList;
	private List<RealestateType> realestateType;
	
	public int getProjectId() {
		return projectId;
	}
	public String getProjectTitle() {
		return projectTitle;
	}
	public String getProjectSubtitle() {
		return projectSubtitle;
	}
	public String getProjectCode() {
		return projectCode;
	}
	public String getProjectLogo() {
		return projectLogo;
	}
	public int getLocationId() {
		return locationId;
	}
	public int getArchitectId() {
		return architectId;
	}
	public int getStructuralDesignerId() {
		return structuralDesignerId;
	}
	public int getLegalAdvisorId() {
		return legalAdvisorId;
	}
	public int getDeveloperCompanyId() {
		return developerCompanyId;
	}
	public String getReraApprove() {
		return reraApprove;
	}
	public String getReraNo() {
		return reraNo;
	}
	public String getLayoutMap() {
		return layoutMap;
	}
	public String getWaterSource() {
	    return waterSource;
	}
	public String getDrainage() {
	    return drainage;
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
	public String getWorkStatus() {
		return workStatus;
	}
    public int getPropertyTypeId() {
      return propertyTypeId;
    }
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}
	public void setProjectSubtitle(String projectSubtitle) {
		this.projectSubtitle = projectSubtitle;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	public void setProjectLogo(String projectLogo) {
		this.projectLogo = projectLogo;
	}
	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	public void setArchitectId(int architectId) {
		this.architectId = architectId;
	}
	public void setStructuralDesignerId(int structuralDesignerId) {
		this.structuralDesignerId = structuralDesignerId;
	}
	public void setLegalAdvisorId(int legalAdvisorId) {
		this.legalAdvisorId = legalAdvisorId;
	}
	public void setDeveloperCompanyId(int developerCompanyId) {
		this.developerCompanyId = developerCompanyId;
	}
	public void setReraApprove(String reraApprove) {
		this.reraApprove = reraApprove;
	}
	public void setReraNo(String reraNo) {
		this.reraNo = reraNo;
	}
	public void setLayoutMap(String layoutMap) {
		this.layoutMap = layoutMap;
	}
	public void setWaterSource(String waterSource) {
		this.waterSource = waterSource;
	}
	public void setDrainage(String drainage) {
		this.drainage = drainage;
	}
	public void setWorkStatus(String workStatus) {
		this.workStatus = workStatus;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPropertyTypeId(int propertyTypeId) {
		this.propertyTypeId = propertyTypeId;
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
    public int getProjectEnquiryCount() {
      return projectEnquiryCount;
    }
    public void setProjectEnquiryCount(int projectEnquiryCount) {
      this.projectEnquiryCount = projectEnquiryCount;
    }
    public String getProjMainImg() {
      return projMainImg;
    }
    public void setProjMainImg(String projMainImg) {
      this.projMainImg = projMainImg;
    }
    public String getLocationName() {
      return locationName;
    }
    public void setLocationName(String locationName) {
      this.locationName = locationName;
    }
    public List<Realestate> getRealestateNameList() {
      return realestateNameList;
    }
    public void setRealestateNameList(List<Realestate> realestateNameList) {
      this.realestateNameList = realestateNameList;
    }
    public List<RealestateSubcategory> getRealestateSubNameList() {
      return realestateSubNameList;
    }
    public void setRealestateSubNameList(List<RealestateSubcategory> realestateSubNameList) {
      this.realestateSubNameList = realestateSubNameList;
    }
    public List<RealestateType> getRealestateType() {
      return realestateType;
    }
    public void setRealestateType(List<RealestateType> realestateType) {
      this.realestateType = realestateType;
    }
    public String getArchitechName() {
      return architechName;
    }
    public void setArchitechName(String architechName) {
      this.architechName = architechName;
    }
    public String getDesignerName() {
      return designerName;
    }
    public void setDesignerName(String designerName) {
      this.designerName = designerName;
    }
    public String getAdvisorName() {
      return advisorName;
    }
    public void setAdvisorName(String advisorName) {
      this.advisorName = advisorName;
    }
    public String getDeveloperCompanyName() {
      return developerCompanyName;
    }
    public void setDeveloperCompanyName(String developerCompanyName) {
      this.developerCompanyName = developerCompanyName;
    }
    public String getPropertyTypeTitle() {
      return propertyTypeTitle;
    }
    public void setPropertyTypeTitle(String propertyTypeTitle) {
      this.propertyTypeTitle = propertyTypeTitle;
    }
    public String getLocationCity() {
      return locationCity;
    }
    public void setLocationCity(String locationCity) {
      this.locationCity = locationCity;
    }
    public String getLocationMapLink() {
      return locationMapLink;
    }
    public void setLocationMapLink(String locationMapLink) {
      this.locationMapLink = locationMapLink;
    }
    public String getProjectPDF() {
      return projectPDF;
    }
    public void setProjectPDF(String projectPDF) {
      this.projectPDF = projectPDF;
    }
    public String getSiteLink() {
      return siteLink;
    }
    public void setSiteLink(String siteLink) {
      this.siteLink = siteLink;
    }
    
  
}
