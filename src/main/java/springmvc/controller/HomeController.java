package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    /*Method to handle URLs. This method will return view(page) name*/
    @RequestMapping("/home")
    public String home(Model model){
        model.addAttribute("name","Anjali Shrivastav");
        model.addAttribute("id",101);
        List<String> friendList = new ArrayList<String>();
        friendList.add("Anju");
        friendList.add("Ankit");
        friendList.add("Abhi");
        model.addAttribute("friendList",friendList);
        System.out.println("This is Home URL");
        return "index";
    }

    @RequestMapping("/about")
    public String about(){
        System.out.println("This is About URL");
        return "about";
    }

    @RequestMapping("/help")
    public ModelAndView help(){
        System.out.println("This is Help URL");
        ModelAndView modelAndView = new ModelAndView();
        //setting the data
        modelAndView.addObject("name","Anju");
        modelAndView.addObject("rollnumber",102);
        LocalDateTime now = LocalDateTime.now();
        modelAndView.addObject("time",now);

        List<Integer> marks = new ArrayList<Integer>();
        marks.add(20);
        marks.add(40);
        marks.add(60);
        marks.add(80);
        modelAndView.addObject("marks",marks);
        //setting the view name
        modelAndView.setViewName("help");

        return modelAndView;
    }
}
