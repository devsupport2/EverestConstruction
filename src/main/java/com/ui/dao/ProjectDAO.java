package com.ui.dao;

import java.util.List;

import com.ui.model.Achievement;
import com.ui.model.Enquiry;
import com.ui.model.EnquiryStatus;
import com.ui.model.Feedback;
import com.ui.model.Gallery;
import com.ui.model.GalleryImage;
import com.ui.model.Project;
import com.ui.model.ProjectAmenity;
import com.ui.model.ProjectArea;
import com.ui.model.ProjectBank;
import com.ui.model.ProjectDetail;
import com.ui.model.ProjectFloorLayout;
import com.ui.model.ProjectPaymentSchedule;
import com.ui.model.ProjectPriceInfo;
import com.ui.model.ProjectSpecification;
import com.ui.model.Property;
import com.ui.model.Realestate;
import com.ui.model.RealestateSubcategory;
import com.ui.model.RealestateType;
import com.ui.model.Slider;
import com.ui.model.User;
import com.ui.model.WorkstatusImage;

public interface ProjectDAO {
    public List<Slider> getAllSliders();
    public List<Project> getAllProjectWorkStatus();
    public List<Project> getSixProjectForFront();
    public List<Project> getAllProjectForFront();
    public List<Project> getAllProjectLogo();
    public List<Project> getProjectByStatus(String workstatus);
    public List<Project> getAllProjectByStatus(String workstatus);
    public List<Realestate> getProjectRealestateById(int projectid);
    public List<RealestateSubcategory> getProjectRealestateSubcategoryById(int projectid);
    public List<RealestateType> getProjectRealestateTypeById(int projectid);
    public Project getProjectDetailById(int projectid);
    public List<ProjectSpecification> getProjectSpecificationById(int projectid);
    public List<ProjectAmenity> getProjectAmenityById(int projectid);
    public List<ProjectArea> getProjectAreaById(int projectid);
    public List<ProjectDetail> getProjectDetailsById(int projectid);
    public List<ProjectPaymentSchedule> getProjectPaymentScheduleById(int projectid);
    public List<ProjectPriceInfo> getProjectPriceDetailsById(int projectid);
    public List<Slider> getAllProjectSliders(int projectid);
    public void addUser(User u);
    public int isEmailUnique(String email);
    public int getLastUserId();
    public String getCurrentFinancialYearCode();
    public Enquiry getLastEnquiryDetail();
    public int getLastEnquiryId();
    public int getLastEnquirySequence();
    public void addEnquiry(Enquiry e);
    public void addEnquiryStatus(EnquiryStatus e);
    public List<ProjectFloorLayout> getProjectFloorLayoutById(int projectid);
    public List<Feedback> getAllFeedback();
    public List<Achievement> getAllAchievement();
    public List<WorkstatusImage> getOneWorkstatusImageById(int projectid);
    public List<WorkstatusImage> getAllWorkstatusImage();
    public List<ProjectBank> getAllBankById(int projectid);
	public List<GalleryImage> getAllImages();
/*	public List<Gallery> getAllImagesForFront();*/
  public List<Property> getAllPropertyByProjectId(int projectid);
  public List<Gallery> getAllAlbum();
  public List<Gallery> getAllAlbumone();
  public List<GalleryImage> getAlbumImage(int albumId);
    
}
