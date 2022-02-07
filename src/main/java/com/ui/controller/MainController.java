package com.ui.controller;

import java.util.Locale;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ui.dao.ProjectDAO;


@Controller
public class MainController {
  
  @Autowired
  ProjectDAO projectDAO;
    
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String mainPage(Locale locale, Model model, HttpSession session) {
        logger.info("##### Index PAGE #####");
        model.addAttribute("sliders", projectDAO.getAllSliders());
        model.addAttribute("feedback", projectDAO.getAllFeedback());
        model.addAttribute("albumOneImage", projectDAO.getAllAlbumone());
        return "index";
    }
    
    @RequestMapping(value = "/projects_list", method = RequestMethod.GET)
    public String projectsList(Locale locale, Model model, HttpSession session) {
        logger.info("##### Projects List PAGE #####");
       
        
        return "projects_list";
    }
    

    @RequestMapping(value = "/photo_gallery", method = RequestMethod.GET)
    public String photo_gallery(Locale locale, Model model, HttpSession session) {
        logger.info("##### Projects List PAGE #####");
        model.addAttribute("albumImageListalbum", projectDAO.getAllImages());
        model.addAttribute("albumOneImage", projectDAO.getAllAlbumone());
        
        return "photo_gallery";
    }
    
    @RequestMapping(value = "/project_details", method = RequestMethod.GET)
    public String projectDetails(int projectid, Locale locale, Model model, HttpSession session) {
        logger.info("##### PROJECT DETAILS PAGE #####");
        
        model.addAttribute("projectsliders", projectDAO.getAllProjectSliders(projectid));
        model.addAttribute("amenities", projectDAO.getProjectAmenityById(projectid));
        model.addAttribute("workstatusOneImage", projectDAO.getOneWorkstatusImageById(projectid));
        model.addAttribute("workstatusAllImage", projectDAO.getAllWorkstatusImage());
        model.addAttribute("projectbank", projectDAO.getAllBankById(projectid));
        
        return "project_details";
    }
    
    @RequestMapping(value = "/project_details_new", method = RequestMethod.GET)
    public String projectDetailsNew(int projectid, Locale locale, Model model, HttpSession session) {
        logger.info("##### PROJECT DETAILS PAGE NEW #####");
        
        model.addAttribute("projectsliders", projectDAO.getAllProjectSliders(projectid));
        model.addAttribute("amenities", projectDAO.getProjectAmenityById(projectid));
        model.addAttribute("workstatusOneImage", projectDAO.getOneWorkstatusImageById(projectid));
        model.addAttribute("workstatusAllImage", projectDAO.getAllWorkstatusImage());
        model.addAttribute("projectbank", projectDAO.getAllBankById(projectid));
        
        return "project_details_new";
    }
    
    @RequestMapping(value = "/why_everest", method = RequestMethod.GET)
    public String whyEverest(Locale locale, Model model, HttpSession session) {
        logger.info("##### WHY EVEREST PAGE #####");
        return "why_everest";
    }
    
    @RequestMapping(value = "/director_profile", method = RequestMethod.GET)
    public String directorProfile(Locale locale, Model model, HttpSession session) {
        logger.info("##### Director's Profile EVEREST PAGE #####");
        return "director_profile";
    }
    @RequestMapping(value = "/contact_us", method = RequestMethod.GET)
    public String contactUs(Locale locale, Model model, HttpSession session) {
        logger.info("##### CONTACT US PAGE #####");
        return "contact_us";
    }
    
    @RequestMapping(value = "/testimonial", method = RequestMethod.GET)
    public String testimonial(Locale locale, Model model, HttpSession session) {
        logger.info("##### Testimonial PAGE #####");
        return "testimonial";
    }

    @RequestMapping(value = "/achievements", method = RequestMethod.GET)
    public String achievements(Locale locale, Model model, HttpSession session) {
        logger.info("##### Achievements List PAGE #####");
        return "achievements";
    }
    
    @RequestMapping(value = "/NriCorner", method = RequestMethod.GET)
    public String NriCorner(Locale locale, Model model, HttpSession session) {
        logger.info("##### NRI CORNER CALLED#####");
        return "NriCorner";
    }
}
