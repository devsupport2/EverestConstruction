package com.ui.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ui.dao.ProjectDAO;
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

public class ProjectDAOImpl implements ProjectDAO {
	JdbcTemplate jdbcTemplate;
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	private static final Logger logger = LoggerFactory.getLogger(ProjectDAOImpl.class);


	
	  @Override
	  public List<Achievement> getAllAchievement() {
	      logger.info("+++++ GET ALL Achievement +++++");
	      List<Achievement> sta = new ArrayList<Achievement>();
	      String s = "y";
	      String sql = "select achievement_id, achievement_title, subtitle, image, description from achievement where status=? order by achievement_title";
	      Connection conn = null;
	      try {
	          conn = dataSource.getConnection();
	          PreparedStatement ps = conn.prepareStatement(sql);
	          ps.setString(1, s);
	          Achievement c = null;
	          ResultSet rs = ps.executeQuery();
	          while (rs.next()) {
	              c = new Achievement();
	              
	              c.setAchievementId(rs.getInt("achievement_id"));
	              c.setTitle(rs.getString("achievement_title"));
	              c.setSubtitle(rs.getString("subtitle"));
	              c.setImage(rs.getString("image"));
	              c.setDescription(rs.getString("description"));
	              
	              sta.add(c);
	          }
	          rs.close();
	          ps.close();

	          return sta;
	      } catch (SQLException e) {
	          throw new RuntimeException(e);
	      } finally {
	          if (conn != null) {
	              try {
	                  conn.close();
	              } catch (SQLException e) {
	              }
	          }
	      }
	  }
	
	
	@Override
    public List<Slider> getAllSliders()
    {
        logger.info("Inside Get All Slider Impl");
        
        List<Slider> Slider = new ArrayList<Slider>();
        
        String s = "y";
        
        String sql = "select slider_id, slider_sequence, slider_subtitle, slider_description, slider_title, image, active, status, created_by, created_date, ip_address from slider where status=? and active=? order by slider_sequence";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setString(2, s);
            Slider ss = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                ss = new Slider();
                
                ss.setSliderId(rs.getInt("slider_id"));
                ss.setSliderTitle(rs.getString("slider_title"));
                ss.setSliderSequence(rs.getInt("slider_sequence"));
                ss.setSliderSubtitle(rs.getString("slider_subtitle"));
                ss.setSliderDescription(rs.getString("slider_description"));
                ss.setImage(rs.getString("image"));
                ss.setActive(rs.getString("active"));
                ss.setStatus(rs.getString("status"));
                ss.setCreatedBy(rs.getInt("created_by"));
                ss.setCreatedDate(rs.getString("created_date"));
                ss.setIpAddress(rs.getString("ip_address"));
                
                Slider.add(ss);
           }
           rs.close();
           ps.close();
          
           return Slider;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public List<Project> getAllProjectWorkStatus()
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<Project> project = new ArrayList<Project>();
        
        String s = "y";
        
        String sql = "select work_status from project where status=? group by work_status order by work_status";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            Project p = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                p = new Project();
                p.setWorkStatus(rs.getString("work_status"));
                
                project.add(p);
           }
           rs.close();
           ps.close();
          
           return project;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public int isEmailUnique(String email) {
        logger.info("+++++ IS EMAIL UNIQUE +++++");
        String sql = "select user_id from user where status=? and email=?";
        int id = 0;
        String s = "y";
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, s);
            ps.setString(2, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("user_id");
            }
            rs.close();
            ps.close();
            return id;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
	
	
	@Override
    public List<Project> getAllProjectLogo()
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<Project> project = new ArrayList<Project>();
        
        String s = "y";
        
        String sql = "select project_id, project_title, project_Image, project_logo from project where status=? order by project_title";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            Project p = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                p = new Project();
                p.setProjectId(rs.getInt("project_id"));
                p.setProjectTitle(rs.getString("project_title"));
                p.setProjMainImg(rs.getString("project_Image"));
                p.setProjectLogo(rs.getString("project_logo"));
                
                project.add(p);
           }
           rs.close();
           ps.close();
          
           return project;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	
	@Override
    public List<Project> getProjectByStatus(String workstatus)
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<Project> project = new ArrayList<Project>();
        
        String s = "y";
        
        String sql = "select p.project_id, p.project_title, p.project_Image, p.work_status, l.location_name, p.project_logo from project p left join location l on p.location_id=l.location_id where p.status=? and p.work_status=? order by p.project_title limit 0,6";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setString(2, workstatus);
            Project p = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                p = new Project();
                
                p.setProjectId(rs.getInt("project_id"));
                p.setProjectTitle(rs.getString("project_title"));
                p.setProjMainImg(rs.getString("project_Image"));
                p.setWorkStatus(rs.getString("work_status"));
                p.setLocationName(rs.getString("location_name"));
                p.setProjectLogo(rs.getString("project_logo"));
                
                project.add(p);
           }
           rs.close();
           ps.close();
          
           return project;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public List<Project> getSixProjectForFront()
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<Project> project = new ArrayList<Project>();
        
        String s = "y";
        
        String sql = "select p.project_id, p.project_title,p.project_subtitle, p.project_Image, p.work_status, l.location_name from project p left join location l on p.location_id=l.location_id where p.status=? order by p.sequence limit 0,6 ";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            Project p = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                p = new Project();
                
                p.setProjectId(rs.getInt("project_id"));
                p.setProjectTitle(rs.getString("project_title"));
                p.setProjectSubtitle(rs.getString("project_subtitle"));
                p.setProjMainImg(rs.getString("project_Image"));
                p.setWorkStatus(rs.getString("work_status"));
                p.setLocationName(rs.getString("location_name"));
                
                project.add(p);
           }
           rs.close();
           ps.close();
          
           return project;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public List<Realestate> getProjectRealestateById(int projectid)
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<Realestate> realestate = new ArrayList<Realestate>();
        
        String s = "y";
        
        String sql = "select pd.project_id, r.realestate_title from project_detail pd left join realestate r on pd.realestate_id=r.realestate_id where pd.status=? and pd.project_id=? and r.realestate_title !='null' group by r.realestate_title order by r.realestate_title";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setInt(2, projectid);
            Realestate r = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                r = new Realestate();
                
                r.setProjectId(rs.getInt("project_id"));
                r.setRealestateTitle(rs.getString("realestate_title"));
                realestate.add(r);
           }
           rs.close();
           ps.close();
          
           return realestate;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	
	@Override
    public List<Project> getAllProjectForFront()
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<Project> project = new ArrayList<Project>();
        
        String s = "y";
        
        String sql = "select p.project_id, p.project_title, p.project_Image, p.work_status, l.location_name from project p left join location l on p.location_id=l.location_id where p.status=? order by p.sequence";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            Project p = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                p = new Project();
                
                p.setProjectId(rs.getInt("project_id"));
                p.setProjectTitle(rs.getString("project_title"));
                p.setProjMainImg(rs.getString("project_Image"));
                p.setWorkStatus(rs.getString("work_status"));
                p.setLocationName(rs.getString("location_name"));
                
                project.add(p);
           }
           rs.close();
           ps.close();
          
           return project;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public List<RealestateSubcategory> getProjectRealestateSubcategoryById(int projectid)
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<RealestateSubcategory> realestateSubcategory = new ArrayList<RealestateSubcategory>();
        
        String s = "y";
        
        String sql = "select pd.project_id, rs.subcategory_title from project_detail pd left join realestate_subcategory rs on pd.subcategory_id=rs.realestate_subcategory_id where pd.status=? and pd.project_id=? and rs.subcategory_title !='null' group by rs.subcategory_title order by rs.subcategory_title";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setInt(2, projectid);
            RealestateSubcategory r = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                r = new RealestateSubcategory();
                
                r.setProjectId(rs.getInt("project_id"));
                r.setSubcategoryTitle(rs.getString("subcategory_title"));
                realestateSubcategory.add(r);
           }
           rs.close();
           ps.close();
          
           return realestateSubcategory;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public List<RealestateType> getProjectRealestateTypeById(int projectid)
    {
        logger.info("Inside Get All Project Work Status Impl");
        
        List<RealestateType> realestateType = new ArrayList<RealestateType>();
        
        String s = "y";
        
        String sql = "select pd.project_id, rt.realestate_type_name from project_detail pd left join realestate_type rt on pd.category_id=rt.realestate_type_id where pd.status=? and pd.project_id=? and rt.realestate_type_name !='null' group by rt.realestate_type_name order by rt.realestate_type_name";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setInt(2, projectid);
            RealestateType r = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                r = new RealestateType();
                
                r.setProjectId(rs.getInt("project_id"));
                r.setRealestateTypeName(rs.getString("realestate_type_name"));
                realestateType.add(r);
           }
           rs.close();
           ps.close();
          
           return realestateType;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
	
	@Override
    public List<Project> getAllProjectByStatus(String workstatus)
    {
        logger.info("Inside Get All Project FOR FRONT Work Status Impl");
        
        List<Project> project = new ArrayList<Project>();
        
        String s = "y";
        
        String sql = "select p.project_id, p.project_title, p.project_Image, p.work_status, l.location_name, p.project_logo from project p left join location l on p.location_id=l.location_id where p.status=? and p.work_status=? order by p.sequence";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setString(2, workstatus);
            Project p = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                p = new Project();
                
                p.setProjectId(rs.getInt("project_id"));
                p.setProjectTitle(rs.getString("project_title"));
                p.setProjMainImg(rs.getString("project_Image"));
                p.setWorkStatus(rs.getString("work_status"));
                p.setLocationName(rs.getString("location_name"));
                p.setProjectLogo(rs.getString("project_logo"));
                
                project.add(p);
           }
           rs.close();
           ps.close();
          
           return project;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
    
	
	@Override
    public Project getProjectDetailById(int projectid) {
        logger.info("+++++ PROJECT DETAIL BY ID +++++");
        Project project = null;
        
        String sql = "select p.project_Image, p.project_id, p.project_title, p.project_subtitle, p.project_code, p.project_logo, l.location_name, concat(a.first_name,' ',a.last_name) as architech_name, concat(d.first_name,' ',d.last_name)as designer_name, concat(ad.first_name,' ',ad.last_name)as advisor_name, dc.user_company_name, pt.property_type_title, p.rera_approve, p.rera_no, p.layout_map, p.water_source,p.drainage, p.work_status, p.description, l.city_village, l.g_map_link, p.project_pdf, p.site_link from project p left join location l on p.location_id=l.location_id left join user a on p.architect_id=a.user_id left join user d on p.structural_designer_id=d.user_id left join user ad on p.legal_advisor_id=ad.user_id left join user dc on p.developer_company_id=dc.user_id left join property_type pt on p.property_type_id=pt.property_type_id where project_id=?";

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, projectid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              
              project = new Project();
              project.setProjMainImg(rs.getString("project_Image"));
              project.setProjectId(rs.getInt("project_id"));
              project.setProjectTitle(rs.getString("project_title"));
              project.setProjectSubtitle(rs.getString("project_subtitle"));
              project.setProjectCode(rs.getString("project_code"));
              project.setProjectLogo(rs.getString("project_logo"));
              project.setLocationName(rs.getString("location_name"));
              project.setArchitechName(rs.getString("architech_name"));
              project.setDesignerName(rs.getString("designer_name"));
              project.setAdvisorName(rs.getString("advisor_name"));
              project.setDeveloperCompanyName(rs.getString("user_company_name"));
              project.setPropertyTypeTitle(rs.getString("property_type_title"));
              project.setReraApprove(rs.getString("rera_approve"));
              project.setReraNo(rs.getString("rera_no"));
              project.setLayoutMap(rs.getString("layout_map"));
              project.setWaterSource(rs.getString("water_source"));
              project.setDrainage(rs.getString("drainage"));
              project.setWorkStatus(rs.getString("work_status"));
              project.setDescription(rs.getString("description"));
              project.setLocationCity(rs.getString("city_village"));
              project.setLocationMapLink(rs.getString("g_map_link"));
              project.setProjectPDF(rs.getString("project_pdf"));
              project.setSiteLink(rs.getString("site_link"));
            }
            rs.close();
            ps.close();
            return project;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
	
	@Override
    public List<ProjectSpecification> getProjectSpecificationById(int projectid) {
        logger.info("***** GET PROJECT SPECIFICATION BY ID *****");
        List<ProjectSpecification> sta = new ArrayList<ProjectSpecification>();
        String sql = "select project_specification_id, project_id, title, subtitle, description, attachment from project_specification where project_id=? order by project_specification_id desc";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, projectid);
            ProjectSpecification projectSpecification = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projectSpecification = new ProjectSpecification(rs.getInt("project_specification_id"),
                        rs.getInt("project_id"), rs.getString("title"), rs.getString("subtitle"),
                        rs.getString("description"), rs.getString("attachment"));
                sta.add(projectSpecification);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
	
	
	@Override
    public List<ProjectAmenity> getProjectAmenityById(int projectid) {
        logger.info("***** GET PROJECT AMENITY BY ID *****");
        List<ProjectAmenity> sta = new ArrayList<ProjectAmenity>();
        String sql = "select project_amenity_id, project_id, title, subtitle, description, attachment from project_amenity where project_id=? order by project_amenity_id desc";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, projectid);
            ProjectAmenity projectAmenity = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projectAmenity = new ProjectAmenity(rs.getInt("project_amenity_id"), rs.getInt("project_id"),
                        rs.getString("title"), rs.getString("subtitle"), rs.getString("description"),
                        rs.getString("attachment"));
                sta.add(projectAmenity);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
	
	@Override
    public List<ProjectArea> getProjectAreaById(int projectid) {
        logger.info("***** GET PROJECT AREA BY ID *****");
        List<ProjectArea> sta = new ArrayList<ProjectArea>();
        String sql = "select pa.project_area_id, pa.project_id, pa.category_id, pa.subcategory_id, pa.realestate_id, pa.unit_master_id, pa.area_id, pa.unit_id, pa.area_value, rt.realestate_type_name, rs.subcategory_title, r.realestate_title, a.area_type_title, mu.measurement_unit_name, um.unit_name from project_area pa left join unit_master um on pa.unit_master_id = um.unit_master_id, realestate_type rt, realestate_subcategory rs, realestate r, area_type a, measurement_unit mu where project_id=? and pa.category_id = rt.realestate_type_id and pa.subcategory_id = rs.realestate_subcategory_id and pa.realestate_id = r.realestate_id and pa.area_id = a.area_type_id and pa.unit_id = mu.measurement_unit_id order by project_area_id";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, projectid);
            ProjectArea projectArea = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projectArea = new ProjectArea(rs.getInt("project_area_id"), rs.getInt("project_id"),
                        rs.getInt("category_id"), rs.getInt("subcategory_id"), rs.getInt("realestate_id"),
                        rs.getInt("unit_master_id"), rs.getInt("area_id"), rs.getInt("unit_id"),
                        rs.getString("area_value"), rs.getString("realestate_type_name"),
                        rs.getString("subcategory_title"), rs.getString("realestate_title"),
                        rs.getString("area_type_title"), rs.getString("measurement_unit_name"),
                        rs.getString("unit_name"));
                sta.add(projectArea);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
	
	@Override
    public List<ProjectDetail> getProjectDetailsById(int projectid) {
        logger.info("***** GET PROJECT DETAILS BY ID *****");
        List<ProjectDetail> sta = new ArrayList<ProjectDetail>();
        String s = "y";
        String sql = "select pd.project_detail_id, pd.project_id, pd.category_id, pd.subcategory_id, pd.unit_master_id, pd.realestate_id, pd.number_of_units, rs.realestate_type_name, rss.subcategory_title, rst.realestate_title, um.unit_name from project_detail pd left join unit_master um on pd.unit_master_id = um.unit_master_id, realestate_type rs, realestate_subcategory rss, realestate rst  where pd.status=? and pd.category_id = rs.realestate_type_id and pd.subcategory_id = rss.realestate_subcategory_id and pd.realestate_id = rst.realestate_id and project_id=? order by project_detail_id";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, s);
            ps.setInt(2, projectid);
            ProjectDetail projectDetail = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projectDetail = new ProjectDetail(rs.getInt("project_detail_id"), rs.getInt("project_id"),
                        rs.getInt("category_id"), rs.getInt("subcategory_id"), rs.getInt("unit_master_id"),
                        rs.getInt("realestate_id"), rs.getString("number_of_units"),
                        rs.getString("realestate_type_name"), rs.getString("subcategory_title"),
                        rs.getString("realestate_title"), rs.getString("unit_name"));
                sta.add(projectDetail);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }

    @Override
    public List<ProjectPriceInfo> getProjectPriceDetailsById(int projectid) {
        logger.info("***** GET PROJECT PRICE DETAILS BY ID *****");
        List<ProjectPriceInfo> sta = new ArrayList<ProjectPriceInfo>();
        String s = "y";
        String sql = "select pp.project_price_info_id, pp.project_id, pp.price_lable, pp.price_value, rs.realestate_type_name, rss.subcategory_title, rst.realestate_title, um.unit_name, mu.measurement_unit_name from project_price_info pp left join unit_master um on pp.unit_master_id = um.unit_master_id, realestate_type rs, realestate_subcategory rss, realestate rst,measurement_unit mu  where pp.status=? and pp.category_id = rs.realestate_type_id and pp.subcategory_id = rss.realestate_subcategory_id and pp.realestate_id = rst.realestate_id and pp.unit_type_id = mu.measurement_unit_id and project_id=? order by project_price_info_id";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, s);
            ps.setInt(2, projectid);
            ProjectPriceInfo projectPriceInfo = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projectPriceInfo = new ProjectPriceInfo(rs.getInt("project_price_info_id"), rs.getInt("project_id"),
                        rs.getString("price_lable"), rs.getString("price_value"), rs.getString("realestate_type_name"),
                        rs.getString("subcategory_title"), rs.getString("realestate_title"), rs.getString("unit_name"),
                        rs.getString("measurement_unit_name"));
                sta.add(projectPriceInfo);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }

    @Override
    public List<ProjectPaymentSchedule> getProjectPaymentScheduleById(int projectid) {
        logger.info("***** GET PROJECT PRICE DETAILS BY ID *****");
        List<ProjectPaymentSchedule> sta = new ArrayList<ProjectPaymentSchedule>();
        String s = "y";
        String sql = "select pp.project_payment_schedule_id, pp.project_id, pp.sequence, pp.sequence_title, pp.payment_lable, pp.payment_value, pp.unit_id, mu.measurement_unit_name from project_payment_schedule pp,measurement_unit mu  where pp.status=? and pp.unit_id = mu.measurement_unit_id and project_id=? order by pp.sequence";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, s);
            ps.setInt(2, projectid);
            ProjectPaymentSchedule projectPaymentSchedule = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                projectPaymentSchedule = new ProjectPaymentSchedule(rs.getInt("project_payment_schedule_id"),
                        rs.getInt("project_id"), rs.getString("sequence"), rs.getString("sequence_title"),
                        rs.getString("payment_lable"), rs.getFloat("payment_value"), rs.getInt("unit_id"),
                        rs.getString("measurement_unit_name"));
                sta.add(projectPaymentSchedule);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    @Override
    public List<Slider> getAllProjectSliders(int projectid)
    {
        logger.info("Inside Get All Slider Impl");
        
        List<Slider> Slider = new ArrayList<Slider>();
        
        String s = "y";
        
        String sql = "select ps.slider_id, ps.project_id, ps.slider_title, ps.image, ps.active, ps.status, ps.created_by, ps.created_date, ps.ip_address, p.project_title from project_slider ps left join project p on ps.project_id=p.project_id where ps.status=? and ps.active=? and ps.project_id=? order by p.project_title";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setString(2, s);
            ps.setInt(3, projectid);
            Slider ss = null;
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                ss = new Slider();
                                                
                ss.setSliderId(rs.getInt("slider_id"));
                ss.setSliderTitle(rs.getString("slider_title"));
                ss.setImage(rs.getString("image"));
                ss.setActive(rs.getString("active"));
                ss.setStatus(rs.getString("status"));
                ss.setCreatedBy(rs.getInt("created_by"));
                ss.setCreatedDate(rs.getString("created_date"));
                ss.setIpAddress(rs.getString("ip_address"));
                ss.setProjectTitle(rs.getString("project_title"));
                ss.setProjectId(rs.getInt("project_id"));
                
                Slider.add(ss);
           }
           rs.close();
           ps.close();
          
           return Slider;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
    
    @Override
    public int getLastUserId() {
        logger.info("+++++ GET LAST USER ID +++++");
        String sql = "select user_id from user order by user_id desc limit 0,1";
        int id = 0;
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("user_id");
            }
            rs.close();
            ps.close();
            return id;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    
    @Override
    public void addUser(User u) {
        logger.info("+++++ ADD USER IMPL +++++");
        String sql = "insert into user (first_name, mobile_number, email, user_type_id, status, ip_address) values (?,?,?,?,?,?)";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, u.getFirstName());
            ps.setString(2, u.getMobileNumber());
            ps.setString(3, u.getEmail());
            ps.setInt(4, u.getUserTypeId());
            ps.setString(5, u.getStatus());
            ps.setString(6, u.getIpAddress());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    public String getCurrentFinancialYearCode() {
      logger.info("+++++ GET CURRENT YEAR FINANCIAL YEAR CODE ++++++");
      String s = "y";
      String sql = "select financial_year_code from financial_year where status=? and defaultt=?";
      Connection conn = null;
      try {
          conn = dataSource.getConnection();
          PreparedStatement ps = conn.prepareStatement(sql);
          ps.setString(1, s);
          ps.setString(2, s);
          String f = "";
          ResultSet rs = ps.executeQuery();
          while (rs.next()) {
              f = rs.getString("financial_year_code");
          }
          rs.close();
          ps.close();

          return f;
      } catch (SQLException e) {
          throw new RuntimeException(e);
      } finally {
          if (conn != null) {
              try {
                  conn.close();
              } catch (SQLException e) {
              }
          }
      }
  }
    
    @Override
    public Enquiry getLastEnquiryDetail() {
        logger.info("+++++ GET LAST ENQUIRY DETAIL IMPL +++++");
        Enquiry enquiry = null;
        String sql = "select e.enquiry_id, e.sequence, e.enquiry_no, e.reference_id, e.client_id, e.employee_id, DATE_FORMAT(e.enquiry_date,'%d/%m/%Y') as enquiry_date, e.enquiry_via, e.enquiry_remarks, e.status, u.user_company_name, u.first_name, u.last_name, u.mobile_number, u.email from enquiry e, user u where e.client_id = u.user_id order by e.enquiry_id desc limit 0,1";

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                enquiry = new Enquiry(rs.getInt("enquiry_id"), rs.getInt("sequence"), rs.getString("enquiry_no"),
                        rs.getInt("reference_id"), rs.getInt("client_id"), rs.getInt("employee_id"),
                        rs.getString("enquiry_date"), rs.getString("enquiry_via"), rs.getString("enquiry_remarks"),
                        rs.getString("status"), rs.getString("user_company_name"), rs.getString("first_name"),
                        rs.getString("last_name"), rs.getString("mobile_number"), rs.getString("email"));
            }
            rs.close();
            ps.close();
            return enquiry;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    @Override
    public int getLastEnquiryId() {
        logger.info("+++++ GET LAST ENQUIRY ID IMPL +++++");
        String sql = "select enquiry_id from enquiry order by enquiry_id desc limit 0,1";
        int id = 0;
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("enquiry_id");
            }
            rs.close();
            ps.close();
            return id;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    
    public int getLastEnquirySequence() {
      logger.info("++++++++++ GET LAST ENQUIRY SEQUENCE IMPL ++++++++++");
      String sql = "select sequence from enquiry order by enquiry_id desc limit 0,1";
      int sequence = 0;
      Connection conn = null;
      try {
          conn = dataSource.getConnection();
          PreparedStatement ps = conn.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();
          while (rs.next()) {
              sequence = rs.getInt("sequence");
          }
          rs.close();
          ps.close();
          return sequence;
      } catch (SQLException e) {
          throw new RuntimeException(e);
      } finally {
          if (conn != null) {
              try {
                  conn.close();
              } catch (SQLException e) {
              }
          }
      }
  }

    
    
    @Override
    public void addEnquiry(Enquiry e) {
        logger.info("+++++ ADD ENQUIRY IMPL +++++");
        /*String sql = "insert into enquiry(sequence, enquiry_no, client_id, enquiry_date, enquiry_via, enquiry_remarks, status, ip_address) values (?,?,?,curdate(),'Web',?,?,?)";*/
        String sql = "insert into enquiry(sequence, enquiry_no, reference_id, client_id, employee_id, enquiry_date, enquiry_via, enquiry_remarks, occupation_id, designation_id, budget_id, status, ip_address) values (?,?,0,?,0,curdate(),'Web',?,0,0,0,?,?)";

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, e.getSequence());
            ps.setString(2, e.getEnquiryNo());
            ps.setInt(3, e.getClientId());
            ps.setString(4, e.getRemark());
            ps.setString(5, e.getStatus());
            ps.setString(6, e.getIpAddress());
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                }
            }
        }
    }
    
    @Override
    public void addEnquiryStatus(EnquiryStatus e) {
        logger.info("+++++ ADD ENQUIRY STATUS IMPL +++++");
        String sql = "insert into enquiry_status(enquiry_id, quotation_id, status_id, status, ip_address) values (?,?,?,?,?)";

        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, e.getEnquiryId());
            ps.setInt(2, e.getQuotationId());
            ps.setInt(3, e.getStatusId());
            ps.setString(4, e.getStatus());
            ps.setString(5, e.getIpAddress());
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                }
            }
        }
    }
    
    @Override
    public List<ProjectFloorLayout> getProjectFloorLayoutById(int projectid) {
        logger.info("***** GET PROJECT FLOOR LAYOUT BY ID *****");
        List<ProjectFloorLayout> sta = new ArrayList<ProjectFloorLayout>();
        String s = "y";
        String sql = "select pp.project_floor_layout_id, pp.floor_number, pp.image, pp.total_unit, p.project_title, um.unit_name, r.realestate_type_name from project_floor_layout pp left join project p on pp.project_id=p.project_id left join unit_master um on pp.unit_id=um.unit_master_id left join realestate_type r on pp.category_id=r.realestate_type_id where pp.project_id=? order by pp.project_floor_layout_id";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, projectid);
            ProjectFloorLayout projectFloorLayout = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              projectFloorLayout = new ProjectFloorLayout();
              projectFloorLayout.setProjectFloorLayoutId(rs.getInt("project_floor_layout_id"));
              projectFloorLayout.setFloorNumber(rs.getString("floor_number"));
              projectFloorLayout.setImage(rs.getString("image"));
              projectFloorLayout.setTotalUnit(rs.getString("total_unit"));
              projectFloorLayout.setProjectTitle(rs.getString("project_title"));
              projectFloorLayout.setUnitName(rs.getString("unit_name"));
              projectFloorLayout.setCategoryName(rs.getString("realestate_type_name"));
              
                sta.add(projectFloorLayout);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    @Override
    public List<Feedback> getAllFeedback() {
        logger.info("+++++ GET ALL FEEDBACK +++++");
        List<Feedback> sta = new ArrayList<Feedback>();
        String s = "y";
        String sql = "select f.feedback_id, f.user_id, f.user_first_name, f.user_last_name, f.image, f.orgnaization_name, f.feedback, u.first_name, u.last_name from feedback f left join user u on f.user_id = u.user_id where f.status=? order by user_first_name";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, s);
            Feedback feedback = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
              feedback = new Feedback();
                    feedback.setFeedbackId(rs.getInt("feedback_id"));
                    feedback.setUserId(rs.getInt("user_id"));
                    feedback.setUserFirstName(rs.getString("user_first_name"));
                    feedback.setUserLastName(rs.getString("user_last_name"));
                    feedback.setImage(rs.getString("image"));
                    feedback.setOrgnaizationName(rs.getString("orgnaization_name"));
                    feedback.setFeedback(rs.getString("feedback"));
                    feedback.setFirstName(rs.getString("first_name"));
                    feedback.setLastName(rs.getString("last_name"));

                sta.add(feedback);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    
    @Override
    public List<WorkstatusImage> getOneWorkstatusImageById(int projectid)
    {
        logger.info("Inside Get Project Work Status ONR IMAGE Impl");
        List<WorkstatusImage> sta = new ArrayList<WorkstatusImage>();
        WorkstatusImage w = null;
        
        String s = "y";
        
        String sql = "select w.workstatus_id, w.title, w.subtitle, date_format(w.date,'%d/%m/%Y') as date, wi.workstatus_image_id, wi.image from workstatus_image wi left join workstatus w on wi.workstatus_id=w.workstatus_id where w.status=? and w.project_id=? group by wi.workstatus_id order by w.title";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, s);
            ps.setInt(2, projectid);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                w = new WorkstatusImage();
                
                w.setWorkstatusId(rs.getInt("workstatus_id"));
                w.setTitle(rs.getString("title"));
                w.setSubtitle(rs.getString("subtitle"));
                w.setDate(rs.getString("date"));
                w.setWorkstatusImageId(rs.getInt("workstatus_image_id"));
                w.setImage(rs.getString("image"));
                sta.add(w);
           }
           rs.close();
           ps.close();
          
           return sta;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }
    
    @Override
    public List<WorkstatusImage> getAllWorkstatusImage() {
        logger.info("+++++ GET ALL WORKSTATUS IMAGE +++++");
        List<WorkstatusImage> sta = new ArrayList<WorkstatusImage>();
        
        String sql = "select workstatus_image_id, workstatus_id, title, subtitle, image from workstatus_image order by title";
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            WorkstatusImage w = null;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                w = new WorkstatusImage();
                
                w.setWorkstatusImageId(rs.getInt("workstatus_image_id"));
                w.setWorkstatusId(rs.getInt("workstatus_id"));
                w.setTitle(rs.getString("title"));
                w.setSubtitle(rs.getString("subtitle"));
                w.setImage(rs.getString("image"));
                
                sta.add(w);
            }
            rs.close();
            ps.close();

            return sta;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
    @Override
    public List<ProjectBank> getAllBankById(int projectid)
    {
        logger.info("Inside Get Project BANK BY ID Impl");
        List<ProjectBank> sta = new ArrayList<ProjectBank>();
        ProjectBank w = null;
        
        String s = "y";
        
        String sql = "select pb.project_bank_id, b.bank_name, b.image, pb.bank_id from project_bank pb left join bank b on pb.bank_id=b.bank_id where pb.project_id=? group by pb.bank_id order by b.bank_name";
        
        Connection conn = null;
        try
        {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
                        
            ps.setInt(1, projectid);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next())
            {
                w = new ProjectBank();
                
                w.setProjectBankId(rs.getInt("project_bank_id"));
                w.setTitle(rs.getString("bank_name"));
                w.setImage(rs.getString("image"));
                w.setBankId(rs.getInt("bank_id"));
                sta.add(w);
           }
           rs.close();
           ps.close();
          
           return sta;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
        finally
        {
            if (conn != null)
            {
                try
                {
                    conn.close();
                }
                catch (SQLException e) {}
            }
        }
    }


/*	@Override
	public List<Gallery> getAllImagesForFront() {
		logger.info("+++++ GET ALL USER TYPE +++++");
		List<Gallery> sta = new ArrayList<Gallery>();
		String s = "y";
		String sql = "select photo_id,photo_title,photo_subtitle,photo_path,photo_link from album_image where status=? limit 4";
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, s);
			Gallery ga = null;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ga=new Gallery();
				ga.setPhotoId(rs.getInt("photo_id"));
				ga.setPhotoTitle(rs.getString("photo_title"));
				ga.setPhotoSubtitle(rs.getString("photo_subtitle"));
				ga.setPhotoPath(rs.getString("photo_path"));
				ga.setPhotoLink(rs.getString("photo_link"));
				sta.add(ga);
			}
			rs.close();
			ps.close();

			return sta;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}

	}*/


  @Override
  public List<Property> getAllPropertyByProjectId(int projectid) {
    logger.info("+++++ GET PROPERTY BY PROJECT ID +++++");
    List<Property> sta = new ArrayList<Property>();
    String s = "y";
    String sql = "select p.property_id, p.property_title, pj.project_title, rs.realestate_type_name, rss.subcategory_title, rst.realestate_title, um.unit_name, p.floor, p.property_status from property p left join unit_master um on p.property_unit_master_id = um.unit_master_id, project pj, realestate_type rs, realestate_subcategory rss, realestate rst where p.status=? and pj.project_id=? and p.project_type_id = pj.project_id and p.category_id = rs.realestate_type_id and p.subcategory_id = rss.realestate_subcategory_id and p.realestate_id = rst.realestate_id order by  p.floor+0  ASC   ";
    Connection conn = null;
    try {
        conn = dataSource.getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, s);
        ps.setInt(2, projectid);
        Property property = null;
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            property = new Property(rs.getInt("property_id"), rs.getString("property_title"),
                    rs.getString("project_title"), rs.getString("realestate_type_name"),
                    rs.getString("subcategory_title"), rs.getString("realestate_title"), rs.getString("unit_name"), rs.getString("floor"), rs.getString("property_status"));
            sta.add(property);
        }
        rs.close();
        ps.close();
        return sta;
    } catch (SQLException e) {
        throw new RuntimeException(e);
    } finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
            }
        }
    }
}
  

  public List<Gallery> getAllAlbum() {
    ProjectDAOImpl.logger.info("+++++ GET ALL ALBUM +++++");
    final List<Gallery> sta = new ArrayList<Gallery>();
    final String s = "y";
    final String sql = "select album_Id, album_title, album_subtitle, DATE_FORMAT(album_date,'%d/%m/%Y') as album_date, description from album where status=? order by album_title desc";
    Connection conn = null;
    try {
        conn = this.dataSource.getConnection();
        final PreparedStatement ps = conn.prepareStatement("select album_Id, album_title, album_subtitle, DATE_FORMAT(album_date,'%d/%m/%Y') as album_date, description from album where status=? order by album_title desc");
        ps.setString(1, "y");
        Gallery album = null;
        final ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            album = new Gallery();
            album.setAlbumId(rs.getInt("album_Id"));
            album.setAlbumTitle(rs.getString("album_title"));
            album.setAlbumSubtitle(rs.getString("album_subtitle"));
            album.setAlbumDate(rs.getString("album_date"));
            album.setDescription(rs.getString("description"));
            sta.add(album);
        }
        rs.close();
        ps.close();
        return sta;
    }
    catch (SQLException e) {
        throw new RuntimeException(e);
    }
    finally {
        if (conn != null) {
            try {
                conn.close();
            }
            catch (SQLException ex) {}
        }
    }
}

public List<GalleryImage> getAlbumImage(int albumid) {
    ProjectDAOImpl.logger.info("+++++ GET ALBUM IMAGE +++++");
    final List<GalleryImage> sta = new ArrayList<GalleryImage>();
    final String sql = "select ai.album_image_id, ai.image_title, ai.description, ai.image, ai.album_id, ai.vid_ID from album_image ai left join album a on a.album_id=ai.album_id where ai.album_id=? and a.status='y' order by ai.album_image_id";
    Connection conn = null;
    try {
        conn = this.dataSource.getConnection();
        final PreparedStatement ps = conn.prepareStatement("select ai.album_image_id, ai.image_title, ai.description, ai.image, ai.album_id, ai.vid_ID from album_image ai left join album a on a.album_id=ai.album_id where ai.album_id=? and a.status='y' order by ai.album_image_id");
        ps.setInt(1, albumid);
        GalleryImage albumimage = null;
        final ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            albumimage = new GalleryImage();
            albumimage.setAlbumImageId(rs.getInt("album_image_id"));
            albumimage.setImageTitle(rs.getString("image_title"));
            albumimage.setDescription(rs.getString("description"));
            albumimage.setImage(rs.getString("image"));
            albumimage.setAlbumId(rs.getInt("album_id"));
            albumimage.setVidId(rs.getString("vid_ID"));
            sta.add(albumimage);
        }
        rs.close();
        ps.close();
        return sta;
    }
    catch (SQLException e) {
        throw new RuntimeException(e);
    }
    finally {
        if (conn != null) {
            try {
                conn.close();
            }
            catch (SQLException ex) {}
        }
    }
}

public List<Gallery> getAllAlbumone() {
    ProjectDAOImpl.logger.info("+++++ GET ALL ALBUM +++++");
    final List<Gallery> sta = new ArrayList<Gallery>();
    final String s = "y";
    final String sql = "select a.album_id, ai.album_image_id, ai.image, ai.vid_ID, a.album_title, a.album_subtitle, DATE_FORMAT(a.album_date,'%d/%m/%Y') as album_date, a.description from album a left join (SELECT album_id, MIN(album_image_id) id FROM album_image GROUP BY album_id) gd on gd.album_id = a.album_id left join album_image ai on gd.id = ai.album_image_id where a.status = ?";
    Connection conn = null;
    try {
        conn = this.dataSource.getConnection();
        final PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, "y");
        Gallery album = null;
        final ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            album = new Gallery();
            album.setAlbumId(rs.getInt("album_Id"));
            album.setAlbumTitle(rs.getString("album_title"));
            album.setAlbumSubtitle(rs.getString("album_subtitle"));
            album.setAlbumDate(rs.getString("album_date"));
            album.setDescription(rs.getString("description"));
            album.setImage(rs.getString("image"));
            album.setVidId(rs.getString("vid_ID"));
            album.setAlbumImageId(rs.getInt("album_image_id"));
            sta.add(album);
        }
        rs.close();
        ps.close();
        return sta;
    }
    catch (SQLException e) {
        throw new RuntimeException(e);
    }
    finally {
        if (conn != null) {
            try {
                conn.close();
            }
            catch (SQLException ex) {}
        }
    }
}

public List<GalleryImage> getAllImages() {
    ProjectDAOImpl.logger.info("+++++ GET ALBUM IMAGE +++++");
    final List<GalleryImage> sta = new ArrayList<GalleryImage>();
    final String sql = "select * from album_image ";
    Connection conn = null;
    try {
        conn = this.dataSource.getConnection();
        final PreparedStatement ps = conn.prepareStatement("select * from album_image ");
        GalleryImage albumimage = null;
        final ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            albumimage = new GalleryImage();
            albumimage.setAlbumImageId(rs.getInt("album_image_id"));
            albumimage.setImageTitle(rs.getString("image_title"));
            albumimage.setDescription(rs.getString("description"));
            albumimage.setImage(rs.getString("image"));
            albumimage.setAlbumId(rs.getInt("album_id"));
            albumimage.setVidId(rs.getString("vid_ID"));
            sta.add(albumimage);
        }
        rs.close();
        ps.close();
        return sta;
    }
    catch (SQLException e) {
        throw new RuntimeException(e);
    }
    finally {
        if (conn != null) {
            try {
                conn.close();
            }
            catch (SQLException ex) {}
        }
    }
}

    
}