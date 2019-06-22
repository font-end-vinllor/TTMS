package com.ff.controller;


import com.ff.entity.Play;
import com.ff.service.SearchService;
import com.ff.utils.SearchUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    SearchService searchService;

 @RequestMapping("/searchPlay.do")
   public String searchPlay(Model model, String text){

     if(text!=""){
         String str = SearchUtils.specialStr(text);
         String s = SearchUtils.specialStrKeyword(str);

         List<Play> plays = searchService.searchPlay(s);
         model.addAttribute("plays",plays);
         model.addAttribute("text",text);
         return "/miao/search";

     }

        return null;
   }

}
