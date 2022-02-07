package com.ui.controller;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.imageio.ImageIO;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


import com.ui.dao.ProjectDAO;
import com.ui.model.Achievement;
import com.ui.model.Enquiry;
import com.ui.model.EnquiryStatus;
import com.ui.model.Feedback;
import com.ui.model.Gallery;
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

@RestController
public class ProjectController {
	@Autowired
	ProjectDAO projectDAO;

	Gallery ga;
	User user;
	EnquiryStatus enquiryStatus;
	
	
	final String username = "relaymessages@astartechnologies.net";
    final String password = "A$Tar^@(2010)tech";
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@RequestMapping(value="/getSliders", method= RequestMethod.GET, produces = "application/json")
    public List<Slider> getSliders(HttpServletRequest request, HttpServletResponse res) {
        res.addHeader("Access-Control-Allow-Origin", "*");
        logger.info("Inside Gel All Slider Controller");
        List<Slider> slider = projectDAO.getAllSliders();
        return slider;
    }
	
	@RequestMapping(value="/getAllAchievement", method= RequestMethod.GET, produces = "application/json")
    public List<Achievement> getAllAchievement(HttpServletRequest request, HttpServletResponse res) {
        res.addHeader("Access-Control-Allow-Origin", "*");
        logger.info("Inside Gel All Achievement Controller");
        List<Achievement> a = projectDAO.getAllAchievement();
        return a;
    }
	
	@RequestMapping(value = "/getAllFeedback", method = RequestMethod.GET, produces = "application/json")
    public List<Feedback> getAllFeedback(HttpServletRequest request) {
        logger.info("***** GET ALL FEEDBACK *****");
        List<Feedback> feedback = projectDAO.getAllFeedback();
        return feedback;
    }
	
	@RequestMapping(value = "/getProjectFloorLayoutById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectFloorLayout> getProjectFloorLayoutById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT FLOOR LAYOUT BY ID *****");
        List<ProjectFloorLayout> projectFloorLayout = projectDAO.getProjectFloorLayoutById(projectid);
        return projectFloorLayout;
    }
	
	@RequestMapping(value = "/getOneWorkstatusImageById", method = RequestMethod.GET, produces = "application/json")
    public List<WorkstatusImage> getOneWorkstatusImageById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT WORKSTATUS ONE IMAGE BY ID *****");
        List<WorkstatusImage> w = projectDAO.getOneWorkstatusImageById(projectid);
        return w;
    }
	
	@RequestMapping(value = "/getAllBankById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectBank> getAllBankById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT BANK BY ID *****");
        List<ProjectBank> w = projectDAO.getAllBankById(projectid);
        return w;
    }
	
	@RequestMapping(value = "/getAllWorkstatusImage", method = RequestMethod.GET, produces = "application/json")
    public List<WorkstatusImage> getAllWorkstatusImage(HttpServletRequest request) {
        logger.info("***** GET PROJECT WORKSTATUS ALL IMAGE *****");
        List<WorkstatusImage> w = projectDAO.getAllWorkstatusImage();
        return w;
    }
	
	 /*@RequestMapping(value = "/getAllImages", method = RequestMethod.GET, produces = "application/json")
	  public List<Gallery> getAllImages(HttpServletRequest request) {
	      logger.info("***** GET ALL WORKSTATUS *****");        
	      return projectDAO.getAllImages();
	  }*/
	/*
	 @RequestMapping(value = "/getAllImagesForFront", method = RequestMethod.GET, produces = "application/json")
	  public List<Gallery> getAllImagesForFront(HttpServletRequest request) {
	      logger.info("***** GET ALL WORKSTATUS *****");        
	      return projectDAO.getAllImagesForFront();
	  }
	 */
	 
	@RequestMapping(value = "/getProjectDetailById", method = RequestMethod.GET, produces = "application/json")
    public Project getProjectDetailById(int projectid, HttpServletRequest request) {
        logger.info("***** PROJECT DETAIL BY ID *****");
        Project p = projectDAO.getProjectDetailById(projectid);
        return p;
    }
	
	@RequestMapping(value = "/getProjectSpecificationById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectSpecification> getProjectSpecificationById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT SPECIFICATION BY ID *****");
        List<ProjectSpecification> ps = projectDAO.getProjectSpecificationById(projectid);
        return ps;
    }
	
	@RequestMapping(value = "/getProjectAmenityById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectAmenity> getProjectAmenityById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT AMENITY BY ID *****");
        List<ProjectAmenity> pa = projectDAO.getProjectAmenityById(projectid);
        return pa;
    }
	
	@RequestMapping(value = "/getAllProjectWorkStatus", method = RequestMethod.GET, produces = "application/json")
    public List<Project> getAllProjectWorkStatus(HttpServletRequest request) {
        logger.info("***** PROJECT ALL WORK STATUS *****");
        List<Project> p = projectDAO.getAllProjectWorkStatus();
        return p;
    }
	
	@RequestMapping(value = "/getAllProjectLogo", method = RequestMethod.GET, produces = "application/json")
    public List<Project> getAllProjectLogo(HttpServletRequest request) {
        logger.info("***** GET ALL PROJECT LOGO LIST  *****");
        
        List<Project> p = projectDAO.getAllProjectLogo();
        return p;
    }
	
	@RequestMapping(value = "/getProjectAreaById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectArea> getProjectAreaById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT DETAILS BY ID *****");
        List<ProjectArea> projectArea = projectDAO.getProjectAreaById(projectid);
        return projectArea;
    }

    @RequestMapping(value = "/getProjectDetailsById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectDetail> getProjectDetailsById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT DETAILS BY ID *****");
        List<ProjectDetail> projectDetail = projectDAO.getProjectDetailsById(projectid);
        return projectDetail;
    }

    @RequestMapping(value = "/getProjectPriceDetailsById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectPriceInfo> getProjectPriceDetailsById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT DETAILS BY ID *****");
        List<ProjectPriceInfo> projectPriceInfo = projectDAO.getProjectPriceDetailsById(projectid);
        return projectPriceInfo;
    }

    @RequestMapping(value = "/getProjectPaymentScheduleById", method = RequestMethod.GET, produces = "application/json")
    public List<ProjectPaymentSchedule> getProjectPaymentScheduleById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT PAYMENT SCHEDULE BY ID *****");
        List<ProjectPaymentSchedule> projectPaymentSchedule = projectDAO.getProjectPaymentScheduleById(projectid);
        return projectPaymentSchedule;
    }
	
	
	@RequestMapping(value = "/getSixProjectForFront", method = RequestMethod.GET, produces = "application/json")
    public List<Project> getSixProjectForFront(HttpServletRequest request) {
        logger.info("***** GET 6 PROJECT FOR FRONT *****");
        List<Project> p = projectDAO.getSixProjectForFront();
        for(Project pp: p){
          pp.setRealestateNameList(projectDAO.getProjectRealestateById(pp.getProjectId()));
          pp.setRealestateSubNameList(projectDAO.getProjectRealestateSubcategoryById(pp.getProjectId()));
          pp.setRealestateType(projectDAO.getProjectRealestateTypeById(pp.getProjectId()));
        }
        
        return p;
    }
	
	@RequestMapping(value = "/getAllProjectForFront", method = RequestMethod.GET, produces = "application/json")
    public List<Project> getAllProjectForFront(HttpServletRequest request) {
        logger.info("***** GET 6 PROJECT FOR FRONT *****");
        List<Project> p = projectDAO.getAllProjectForFront();
        for(Project pp: p){
          pp.setRealestateNameList(projectDAO.getProjectRealestateById(pp.getProjectId()));
          pp.setRealestateSubNameList(projectDAO.getProjectRealestateSubcategoryById(pp.getProjectId()));
          pp.setRealestateType(projectDAO.getProjectRealestateTypeById(pp.getProjectId()));
        }
        
        return p;
    }
	
	@RequestMapping(value = "/getProjectByStatus", method = RequestMethod.GET, produces = "application/json")
    public List<Project> getProjectByStatus(String workstatus, HttpServletRequest request) {
        logger.info("***** GET PROJECT LIST BY WORK STATUS  *****");
        
        List<Project> p = projectDAO.getProjectByStatus(workstatus);
            for(Project pp: p){
              pp.setRealestateNameList(projectDAO.getProjectRealestateById(pp.getProjectId()));
              pp.setRealestateSubNameList(projectDAO.getProjectRealestateSubcategoryById(pp.getProjectId()));
              pp.setRealestateType(projectDAO.getProjectRealestateTypeById(pp.getProjectId()));
            }
        return p;
    }
	
	@RequestMapping(value = "/getAllProjectByStatus", method = RequestMethod.GET, produces = "application/json")
    public List<Project> getAllProjectByStatus(String workstatus, HttpServletRequest request) {
        logger.info("***** GET PROJECT LIST BY WORK STATUS  *****");
        
        List<Project> p = projectDAO.getAllProjectByStatus(workstatus);
            for(Project pp: p){
              pp.setRealestateNameList(projectDAO.getProjectRealestateById(pp.getProjectId()));
              pp.setRealestateSubNameList(projectDAO.getProjectRealestateSubcategoryById(pp.getProjectId()));
              pp.setRealestateType(projectDAO.getProjectRealestateTypeById(pp.getProjectId()));
            }
        return p;
    }
	
	@RequestMapping(value = "/getProjectRealestateById", method = RequestMethod.GET, produces = "application/json")
    public List<Realestate> getProjectRealestateById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT REALESTATE BY ID *****");
        List<Realestate> r = projectDAO.getProjectRealestateById(projectid);
        return r;
    }
	
	@RequestMapping(value = "/getProjectRealestateSubcategoryById", method = RequestMethod.GET, produces = "application/json")
    public List<RealestateSubcategory> getProjectRealestateSubcategoryById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT REALESTATE SUB BY ID *****");
        List<RealestateSubcategory> rs = projectDAO.getProjectRealestateSubcategoryById(projectid);
        return rs;
    }
	
	@RequestMapping(value = "/getProjectRealestateTypeById", method = RequestMethod.GET, produces = "application/json")
    public List<RealestateType> getProjectRealestateTypeById(int projectid, HttpServletRequest request) {
        logger.info("***** GET PROJECT REALESTATE TYPE SUB BY ID *****");
        List<RealestateType> rs = projectDAO.getProjectRealestateTypeById(projectid);
        return rs;
    }
	
	@RequestMapping(value = "createClient", method = RequestMethod.POST)
    public String createClient(int projectid, String firstname, String lastname, String email, String number,
            String message, HttpServletRequest request, HttpSession session) {
        logger.info("***** ADD CLIENT AND CREATE ENQUIRY CONTROLLER *****");
        
        int checkEmail = 0;
        String IpAddress = request.getHeader("X-FORWARDED-FOR");
        if (IpAddress == null) {
            IpAddress = request.getRemoteAddr();
        }
        String s = "y";
        
        int usertype = 3;

        if (email.equals("")) {
            email = null;
            user = new User();
            
            user.setUserTypeId(usertype);
            user.setFirstName(firstname);
         
            user.setEmail(email);
            user.setMobileNumber(number);
            user.setStatus(s);
            user.setIpAddress(IpAddress);
           
            projectDAO.addUser(user);
            int clientid = projectDAO.getLastUserId();
            addEnquiry(request, projectid, message, session, clientid);
            
            return "Success";
            
            
        } else {
            checkEmail = projectDAO.isEmailUnique(email);
            if (checkEmail == 0) {
              user = new User();
              user.setUserTypeId(usertype);
              user.setFirstName(firstname);

              user.setEmail(email);
              user.setMobileNumber(number);
              user.setStatus(s);
              user.setIpAddress(IpAddress);
               
              projectDAO.addUser(user);
              int clientid = projectDAO.getLastUserId();
              addEnquiry(request, projectid, message, session, clientid);
              
              return "Success";

            } else {
                addEnquiry(request, projectid, message, session, checkEmail);
                //return "Data not saved! Email already exists!";
                return "Success";
            }
            
        }
        
    }
	
	@RequestMapping(value = "addEnquiry", method = RequestMethod.POST)
    public String addEnquiry(HttpServletRequest request, int projectid, String message, HttpSession session, int clientid) {
        logger.info("***** ADD ENQUIRY CONTROLLER *****");
        
        String IpAddress = request.getHeader("X-FORWARDED-FOR");
        if (IpAddress == null) {
            IpAddress = request.getRemoteAddr();
        }
        String s = "y";
        String enquiryno = null;
        int sequence = 0;
        String currentYearCode = projectDAO.getCurrentFinancialYearCode();
        Enquiry enquiry = null;
        enquiry = projectDAO.getLastEnquiryDetail();
        if (enquiry == null) {
            sequence = 1;
            enquiryno = "EVE-" + currentYearCode + "-I0001";
            
            enquiry = new Enquiry();
            
            enquiry.setSequence(sequence);
            enquiry.setEnquiryNo(enquiryno);
            enquiry.setClientId(clientid);
            enquiry.setStatus(s);
            enquiry.setIpAddress(IpAddress);
            enquiry.setRemark(message);
           
            projectDAO.addEnquiry(enquiry);
            
            int eid = projectDAO.getLastEnquiryId();
            
            enquiryStatus = new EnquiryStatus(eid, 0, 1, "Y", IpAddress);
            projectDAO.addEnquiryStatus(enquiryStatus);
            return "Success";
        } else {
            String fc = enquiry.getEnquiryNo();
            String financialyearcode1 = fc.substring(4, 8);

            sequence = projectDAO.getLastEnquirySequence();

            System.out.println("Last Sequence---------------------------->" + sequence);
            if (sequence == 0) {
                sequence = 1;
                enquiryno = "EVE-" + currentYearCode + "-I0001";
                enquiry = new Enquiry();
                
                enquiry.setSequence(sequence);
                enquiry.setEnquiryNo(enquiryno);
                enquiry.setClientId(clientid);
                enquiry.setStatus(s);
                enquiry.setIpAddress(IpAddress);
                enquiry.setRemark(message);
                
                projectDAO.addEnquiry(enquiry);
                int eid = projectDAO.getLastEnquiryId();
                enquiryStatus = new EnquiryStatus(eid, 0, 1, "Y", IpAddress);
                projectDAO.addEnquiryStatus(enquiryStatus);
                return "Success";

            } else {
                if (currentYearCode.equals(financialyearcode1)) {
                    sequence = sequence + 1;
                    System.out.println("Sequence Plus---------------------------->" + sequence);
                } else {
                    sequence = 1;
                    System.out.println("Sequence 1---------------------------->" + sequence);
                }
                if (sequence >= 1 && sequence < 10) {
                    enquiryno = "EVE-" + currentYearCode + "-I000" + Integer.toString(sequence);
                } else if (sequence >= 10 && sequence < 100) {
                    enquiryno = "EVE-" + currentYearCode + "-I00" + Integer.toString(sequence);
                } else if (sequence >= 100 && sequence < 1000) {
                    enquiryno = "EVE-" + currentYearCode + "-I0" + Integer.toString(sequence);
                } else if (sequence >= 1000 && sequence < 10000) {
                    enquiryno = "EVE-" + currentYearCode + "-I" + Integer.toString(sequence);
                    ;
                }
                enquiry = new Enquiry();
                
                enquiry.setSequence(sequence);
                enquiry.setEnquiryNo(enquiryno);
                enquiry.setClientId(clientid);
                enquiry.setStatus(s);
                enquiry.setIpAddress(IpAddress);
                enquiry.setRemark(message);
                projectDAO.addEnquiry(enquiry);

                int eid = projectDAO.getLastEnquiryId();
                enquiryStatus = new EnquiryStatus(eid, 0, 1, "Y", IpAddress);
                projectDAO.addEnquiryStatus(enquiryStatus);

                return "Success";
            }
        }
    }
	
    @RequestMapping(value = "sendContactUsNotification", method = RequestMethod.POST)
    public String sendContactUsNotification(String firstname, String lastname, String email, String subject, String number,String descr, HttpSession session, HttpServletRequest request, HttpServletResponse res) {
        logger.info("***** INSIDE SEND CONTACT US NOTIFICATION *****");
          
        
        System.out.println("This is Your FirstName -----"+firstname);
        System.out.println("This is Your subject -----"+subject);
        System.out.println("This is Your email -----"+email);
        System.out.println("This is Your number -----"+number);
        System.out.println("This is Your message -----"+descr);
        
        
        
          System.out.println("This si Test -----");
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.host", "mail.astartechnologies.net");
            //props.put("mail.smtp.ssl.trust", "smtp.astartechnologies.net");
            props.put("mail.smtp.port", "587");
           // props.put("mail.smtp.starttls.enable", "true");
            
            
            javax.mail.Session session1 = javax.mail.Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });
            String adminemail = "devsupport3@ultrainfotech.net"+","+email;
            System.out.println("email-----------"+adminemail);
            try {
                InternetAddress[] myBccList = InternetAddress.parse("relaymessages@astartechnologies.net");
                Message message = new MimeMessage(session1);
                message.setFrom(
                    new InternetAddress("relaymessages@astartechnologies.net", "Everest Group"));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(adminemail));

                    message.setRecipients(Message.RecipientType.BCC, myBccList);

                    message.setSubject("Contact Us");
                    StringBuilder sb = new StringBuilder();
                    sb.append(
                        "<table style='border:solid 1px #cfd4d8; font-family: Arial,Helvetica,sans-serif;' align='center' width='750' cellspacing='0' cellpadding='0' border='0'>"
                            + "<tbody>" + "<tr>"
                            + "<td style='padding:15px 0px;  font-size: 16px;  color: #373737; ' align='center' valign='middle'>"
                            + "<a href='http://everestconstruction.co.in'> <img border='0' style='width:200px;' src='http://everestconstruction.co.in/resources/front/assets/img/everest-logo.png'/></a>"
                            + "</td>" + "</tr>" + "<tr>"
                            + "<td style='line-height:0;font-size:0;vertical-align:top;padding:0px;text-align:left;border-bottom:4px solid #cfd4d8'></td>"
                            + "</tr>" + "<tr>"
                            + "<td style='font-family:Arial,Helvetica,sans-serif;font-size:12px; color:#373737; background-color:#fff; padding:20px;' align='left' valign='top'><p> Dear <strong> ");
                    sb.append(firstname + "<br>");
                    sb.append("</strong></p><br><br>  We're glad to know that you want to contact us.We will get back to you soon...<br><br>"
                        +"<b>Email: </b>"+ email+"<br>"
                       /* +"<b>Subject: </b>"+ subject+"<br>"*/
                        +"<b>Message: </b> "
                        + descr + "<br>"
                        + "<tr>"
                        + "<td style='font-family:Arial,Helvetica,sans-serif;font-size:12px; color:#373737; background-color:#fff; padding:20px;' align='left' valign='top'>Thanks & Regards<br>"
                        + "<strong>Everest Group</strong></td>" + "</tr>" + "</tbody>" + "</table>"
                        + "</td>" + "</tr>" + "</tbody>" + "</table>");
                    message.setContent(sb.toString(), "text/html");
                    Transport.send(message);
                    System.out.println("E-Mail Send Suceessfully For Delivery...Using JSP.........");
                } catch (Exception msg) {
                    System.out.println("Not send mail " + msg);
                }

        return "Success";
    }
    
    
    @RequestMapping(value = "sendPDFContactNotification", method = RequestMethod.POST)
    public String sendPDFContactNotification(String firstname, String phone, String email, String subject, String descr, HttpSession session, HttpServletRequest request, HttpServletResponse res) {
        logger.info("***** INSIDE SEND PDF CONTACT NOTIFICATION *****");
          
        
        System.out.println("This is Your FirstName -----"+firstname);
        System.out.println("This is Your phone -----"+phone);
        System.out.println("This is Your email -----"+email);
         
        
        System.out.println("This si Test -----");
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.host", "mail.astartechnologies.net");
            //props.put("mail.smtp.ssl.trust", "smtp.astartechnologies.net");
            props.put("mail.smtp.port", "587");
           // props.put("mail.smtp.starttls.enable", "true");
           
            
            javax.mail.Session session1 = javax.mail.Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });
            
            try {
                InternetAddress[] myBccList = InternetAddress.parse("relaymessages@astartechnologies.net , webmaster@ultrainfotech.net");
                Message message = new MimeMessage(session1);
                message.setFrom(
                    new InternetAddress("relaymessages@astartechnologies.net", "Everest Group"));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("everest.baroda2019@gmail.com"+","+email));

                    message.setRecipients(Message.RecipientType.BCC, myBccList);

                    message.setSubject("New Broucher Request");
                    StringBuilder sb = new StringBuilder();
                    sb.append(
                        "<table style='border:solid 1px #cfd4d8; font-family: Arial,Helvetica,sans-serif;' align='center' width='750' cellspacing='0' cellpadding='0' border='0'>"
                            + "<tbody>" + "<tr>"
                            + "<td style='padding:15px 0px;  font-size: 16px;  color: #373737; ' align='center' valign='middle'>"
                            + "<a href='https://everestconstruction.co.in'> <img border='0' style='width:200px;' src='https://everestconstruction.co.in/resources/front/assets/img/everest-logo.png'/></a>"
                            + "</td>" + "</tr>" + "<tr>"
                            + "<td style='line-height:0;font-size:0;vertical-align:top;padding:0px;text-align:left;border-bottom:4px solid #cfd4d8'></td>"
                            + "</tr>" + "<tr>"
                            + "<td style='font-family:Arial,Helvetica,sans-serif;font-size:12px; color:#373737; background-color:#fff; padding:20px;' align='left' valign='top'><p> Dear <strong> Everest Group,");
                    sb.append("</strong></p><br><br>  The person with following details just tried to access a broucher"+subject+" <br><br>"
                        +"<b>Name: </b>"+ firstname+ "<br>"
                        +"<b>Email: </b>"+ email+"<br>"
                        +"<b>Phone: </b>"+ phone+"<br>"
                        /*+"<b>Message: </b> "
                        + descr + "<br>"*/
                        + "<tr>"
                        + "<td style='font-family:Arial,Helvetica,sans-serif;font-size:12px; color:#373737; background-color:#fff; padding:20px;' align='left' valign='top'>Thanks & Regards<br>"
                        + "<strong>Webmaster</strong></td>" + "</tr>" + "</tbody>" + "</table>"
                        + "</td>" + "</tr>" + "</tbody>" + "</table>");
                    message.setContent(sb.toString(), "text/html");
                    Transport.send(message);
                    System.out.println("E-Mail Send Suceessfully For Delivery...Using JSP.........");
                } catch (Exception msg) {
                    System.out.println("Not send mail " + msg);
                }

        return "Success";
    }
    
	
    @RequestMapping(value = "/getAllPropertyByProjectId", method = RequestMethod.GET, produces = "application/json")
    public List<Property> getAllPropertyByProjectId(int projectid, HttpServletRequest request) {
        logger.info("***** GET ALL PROPERTY BY PROJECT ID *****");
        List<Property> t = projectDAO.getAllPropertyByProjectId(projectid);
        return t;
    }
    
    
    @RequestMapping(value = { "/getAllAlbumWithImages" }, method = { RequestMethod.GET }, produces = { "application/json" })
    public List<Gallery> getAllAlbum(final HttpServletRequest request) {
        ProjectController.logger.info("***** GET ALL ALBUMS *****");
        final List<Gallery> Album = (List<Gallery>)this.projectDAO.getAllAlbum();
        for (final Gallery albumimg : Album) {
            albumimg.setGetAlbumImageList(projectDAO.getAlbumImage(albumimg.getAlbumId()));
        }
        return Album;
    }
    
    @RequestMapping(value = { "/getAllAlbumone" }, method = { RequestMethod.GET }, produces = { "application/json" })
    public List<Gallery> getAllAlbumone(final HttpServletRequest request) {
        ProjectController.logger.info("***** PROJECT ALL WORK STATUS *****");
        final List<Gallery> p = (List<Gallery>)this.projectDAO.getAllAlbumone();
        return p;
    }
	
	
}
