package com.ui.model;

public class Slider 
{
	
	private int sliderId;
	private String sliderTitle;
	private String image;
	private String active;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	private int siteId;
	private int sliderSequence;
	private String sliderSubtitle;
	private String sliderDescription;
	private int projectId;
	private String projectTitle;
	
	
	public int getSiteId() {
		return siteId;
	}
	public void setSiteId(int siteId) {
		this.siteId = siteId;
	}
	public int getSliderId() {
		return sliderId;
	}
	public String getSliderTitle() {
		return sliderTitle;
	}
	public String getImage() {
		return image;
	}
	public String getActive() {
		return active;
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
  public void setSliderId(int sliderId) {
    this.sliderId = sliderId;
  }
  public void setSliderTitle(String sliderTitle) {
    this.sliderTitle = sliderTitle;
  }
  public void setImage(String image) {
    this.image = image;
  }
  public void setActive(String active) {
    this.active = active;
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
  public int getSliderSequence() {
    return sliderSequence;
  }
  public void setSliderSequence(int sliderSequence) {
    this.sliderSequence = sliderSequence;
  }
  public String getSliderSubtitle() {
    return sliderSubtitle;
  }
  public void setSliderSubtitle(String sliderSubtitle) {
    this.sliderSubtitle = sliderSubtitle;
  }
  public String getSliderDescription() {
    return sliderDescription;
  }
  public void setSliderDescription(String sliderDescription) {
    this.sliderDescription = sliderDescription;
  }
  public int getProjectId() {
    return projectId;
  }
  public void setProjectId(int projectId) {
    this.projectId = projectId;
  }
  public String getProjectTitle() {
    return projectTitle;
  }
  public void setProjectTitle(String projectTitle) {
    this.projectTitle = projectTitle;
  }

		

}
