/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.chinajes.bizhub.modules.sales.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.chinajes.bizhub.modules.sales.entity.SalesLeadInfo;

/**
 * 销售线索信息表DAO接口
 * @author max
 * @version 2017-04-25
 */
@MyBatisDao
public interface SalesLeadInfoDao extends CrudDao<SalesLeadInfo> {
	
}