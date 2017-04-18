package com.software.controller;

import com.software.core.entity.Animal;
import com.software.core.service.AnimalService;
import com.software.result.JsonResult;
import com.software.result.ResultCode;
import com.software.util.uploadPic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@RestController
@EnableAutoConfiguration
public class AnimalController {

	 @Autowired
	 AnimalService AnimalService;
	
	@GetMapping(value="/animalManagement")
		public ModelAndView animalManagement(){
		ModelAndView mv = new ModelAndView("animalManagement");	
		return mv;
		}
	
	
	@GetMapping(value="/uploadInfor")
		public ModelAndView uploadInfor(){
			return new ModelAndView("uploadInfor");
		}
	

	@PostMapping(value="/UploadAnimalInfor",produces = {"application/json;charset=UTF-8"})
	 public JsonResult UploadInfor(
			 HttpServletRequest request,
			 @RequestParam("animalPicurl") MultipartFile file,
             @RequestParam("breedName") String breedName,
             @RequestParam("animalSex") String animalSex,
             @RequestParam("animalPrice") String Price,
             @RequestParam("animalDescr") String animalDescr,
             @RequestParam("animalBirth") String Birth
			 ) throws ServletException, IOException, Exception{

//			获取宠物出生年月并将其转成日期格式
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date animalBirth=sdf.parse(Birth);
	
//			获取宠物价格
			Double animalPrice=Double.parseDouble(Price);

//			将宠物图片信息保存在本地指定目录，并将文件地址信息保存给picpath
			uploadPic uploadpic=new uploadPic();
			String picpath=uploadpic.uploadPic(file);
			
//			检验保存图片是否成功，若返回值不是false，则为成功保存图片信息
			if(picpath.equals("false")){
				return new JsonResult(ResultCode.EXCEPTION,null,"false");
			}else{
				
//			将宠物信息保存到数据库中
			Animal animal=new Animal(breedName, animalSex, animalBirth, animalPrice, 0, picpath, animalDescr);
			System.out.println(animal);
			AnimalService.save(animal);
			return new JsonResult(ResultCode.SUCCESS,null,AnimalService.findbyId(animal.getAnimalId()));
			}
						
			    }
			
	     
//	     修改动物商品信息
		@GetMapping(value="/modifyInfo")
		public ModelAndView modifyInfo(){
			return new ModelAndView("modifyInfo");
		}
		
		@GetMapping(value="/modifyAnimalInfo/{searchAnimalName}")
		public List<Animal> modifyAnimalInfo(
				@PathVariable String searchAnimalName
				){
			System.out.println(searchAnimalName);
			return AnimalService.findbyName(searchAnimalName);
			
		}
		
//		查询动物商品信息
		@GetMapping(value="/findInfor")
		public ModelAndView findInfor(){
			return new ModelAndView("findInfor");
		}
		@GetMapping(value="/findAnimalInfor/{searchAnimalName}")
		public List<Animal> findAnimalInfo(
				@PathVariable String searchAnimalName
				){
			System.out.println(searchAnimalName);
			return AnimalService.findbyName(searchAnimalName);
			
		}
				
	}
	
