/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.chinajes.bizhub.modules.sales.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.chinajes.bizhub.modules.sales.entity.SalesLeadInfo;
import com.chinajes.bizhub.modules.sales.service.SalesLeadInfoService;

/**
 * 销售线索信息表Controller
 * @author max
 * @version 2017-04-25
 */
@Controller
@RequestMapping(value = "${adminPath}/sales/salesLeadInfo")
public class SalesLeadInfoController extends BaseController {

	@Autowired
	private SalesLeadInfoService salesLeadInfoService;
	
	@ModelAttribute
	public SalesLeadInfo get(@RequestParam(required=false) String id) {
		SalesLeadInfo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = salesLeadInfoService.get(id);
		}
		if (entity == null){
			entity = new SalesLeadInfo();
		}
		return entity;
	}
	
	@RequiresPermissions("sales:salesLeadInfo:view")
	@RequestMapping(value = {"list", ""})
	public String list(SalesLeadInfo salesLeadInfo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SalesLeadInfo> page = salesLeadInfoService.findPage(new Page<SalesLeadInfo>(request, response), salesLeadInfo); 
		model.addAttribute("page", page);
		return "modules/sales/salesLeadInfoList";
	}

	@RequiresPermissions("sales:salesLeadInfo:view")
	@RequestMapping(value = "form")
	public String form(SalesLeadInfo salesLeadInfo, Model model) {
		model.addAttribute("salesLeadInfo", salesLeadInfo);
		return "modules/sales/salesLeadInfoForm";
	}

	@RequiresPermissions("sales:salesLeadInfo:edit")
	@RequestMapping(value = "save")
	public String save(SalesLeadInfo salesLeadInfo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, salesLeadInfo)){
			return form(salesLeadInfo, model);
		}
		salesLeadInfoService.save(salesLeadInfo);
		addMessage(redirectAttributes, "保存销售线索信息功能成功");
		return "redirect:"+Global.getAdminPath()+"/sales/salesLeadInfo/?repage";
	}
	
	@RequiresPermissions("sales:salesLeadInfo:edit")
	@RequestMapping(value = "delete")
	public String delete(SalesLeadInfo salesLeadInfo, RedirectAttributes redirectAttributes) {
		salesLeadInfoService.delete(salesLeadInfo);
		addMessage(redirectAttributes, "删除销售线索信息功能成功");
		return "redirect:"+Global.getAdminPath()+"/sales/salesLeadInfo/?repage";
	}

}