/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.chinajes.bizhub.modules.sales.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.chinajes.bizhub.modules.sales.entity.SalesLeadInfo;
import com.chinajes.bizhub.modules.sales.dao.SalesLeadInfoDao;

/**
 * 销售线索信息表Service
 * @author max
 * @version 2017-04-25
 */
@Service
@Transactional(readOnly = true)
public class SalesLeadInfoService extends CrudService<SalesLeadInfoDao, SalesLeadInfo> {

	public SalesLeadInfo get(String id) {
		return super.get(id);
	}
	
	public List<SalesLeadInfo> findList(SalesLeadInfo salesLeadInfo) {
		return super.findList(salesLeadInfo);
	}
	
	public Page<SalesLeadInfo> findPage(Page<SalesLeadInfo> page, SalesLeadInfo salesLeadInfo) {
		return super.findPage(page, salesLeadInfo);
	}
	
	@Transactional(readOnly = false)
	public void save(SalesLeadInfo salesLeadInfo) {
		super.save(salesLeadInfo);
	}
	
	@Transactional(readOnly = false)
	public void delete(SalesLeadInfo salesLeadInfo) {
		super.delete(salesLeadInfo);
	}
	
}