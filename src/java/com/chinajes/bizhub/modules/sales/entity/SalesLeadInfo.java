/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.chinajes.bizhub.modules.sales.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 销售线索信息表Entity
 * @author max
 * @version 2017-04-25
 */
public class SalesLeadInfo extends DataEntity<SalesLeadInfo> {
	
	private static final long serialVersionUID = 1L;
	private String leadId;		// 编号
	private String companyId;		// 客户编码
	private String companyName;		// 客户名称
	private String contactId;		// 联系人代码
	private String contactName;		// 联系人名称
	private String principal;		// 负责人
	private String bizLine;		// 业务条线
	private String productId;		// 产品信息
	private String leadsSrc;		// 线索来源
	private String leadsDesc;		// 线索描述
	private String leadStatus;		// 线索状态
	private String estimateAmt;		// 预估金额
	private String agreementAmt;		// 成交金额
	private String plannedStartTime;		// 预计开始时间
	private String preSales;		// 售前
	private String onSales;		// 销售
	private String createdUser;		// 创建人
	private String createdTime;		// 创建时间
	private String updatedUser;		// 更新人
	private String updatedTime;		// 更新时间
	private String ext1;		// 预留字段1
	private String ext2;		// 预留字段2
	private String ext3;		// 预留字段3
	private String ext4;		// 预留字段4
	private String ext5;		// 预留字段5
	
	public SalesLeadInfo() {
		super();
	}

	public SalesLeadInfo(String id){
		super(id);
	}

	@Length(min=1, max=64, message="编号长度必须介于 1 和 64 之间")
	public String getLeadId() {
		return leadId;
	}

	public void setLeadId(String leadId) {
		this.leadId = leadId;
	}
	
	@Length(min=0, max=64, message="客户编码长度必须介于 0 和 64 之间")
	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	
	@Length(min=0, max=255, message="客户名称长度必须介于 0 和 255 之间")
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	@Length(min=0, max=64, message="联系人代码长度必须介于 0 和 64 之间")
	public String getContactId() {
		return contactId;
	}

	public void setContactId(String contactId) {
		this.contactId = contactId;
	}
	
	@Length(min=0, max=64, message="联系人名称长度必须介于 0 和 64 之间")
	public String getContactName() {
		return contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	
	@Length(min=0, max=64, message="负责人长度必须介于 0 和 64 之间")
	public String getPrincipal() {
		return principal;
	}

	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	
	@Length(min=0, max=64, message="业务条线长度必须介于 0 和 64 之间")
	public String getBizLine() {
		return bizLine;
	}

	public void setBizLine(String bizLine) {
		this.bizLine = bizLine;
	}
	
	@Length(min=0, max=64, message="产品信息长度必须介于 0 和 64 之间")
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	@Length(min=0, max=10, message="线索来源长度必须介于 0 和 10 之间")
	public String getLeadsSrc() {
		return leadsSrc;
	}

	public void setLeadsSrc(String leadsSrc) {
		this.leadsSrc = leadsSrc;
	}
	
	@Length(min=0, max=500, message="线索描述长度必须介于 0 和 500 之间")
	public String getLeadsDesc() {
		return leadsDesc;
	}

	public void setLeadsDesc(String leadsDesc) {
		this.leadsDesc = leadsDesc;
	}
	
	@Length(min=0, max=10, message="线索状态长度必须介于 0 和 10 之间")
	public String getLeadStatus() {
		return leadStatus;
	}

	public void setLeadStatus(String leadStatus) {
		this.leadStatus = leadStatus;
	}
	
	@Length(min=0, max=32, message="预估金额长度必须介于 0 和 32 之间")
	public String getEstimateAmt() {
		return estimateAmt;
	}

	public void setEstimateAmt(String estimateAmt) {
		this.estimateAmt = estimateAmt;
	}
	
	@Length(min=0, max=32, message="成交金额长度必须介于 0 和 32 之间")
	public String getAgreementAmt() {
		return agreementAmt;
	}

	public void setAgreementAmt(String agreementAmt) {
		this.agreementAmt = agreementAmt;
	}
	
	@Length(min=0, max=32, message="预计开始时间长度必须介于 0 和 32 之间")
	public String getPlannedStartTime() {
		return plannedStartTime;
	}

	public void setPlannedStartTime(String plannedStartTime) {
		this.plannedStartTime = plannedStartTime;
	}
	
	@Length(min=0, max=64, message="售前长度必须介于 0 和 64 之间")
	public String getPreSales() {
		return preSales;
	}

	public void setPreSales(String preSales) {
		this.preSales = preSales;
	}
	
	@Length(min=0, max=64, message="销售长度必须介于 0 和 64 之间")
	public String getOnSales() {
		return onSales;
	}

	public void setOnSales(String onSales) {
		this.onSales = onSales;
	}
	
	@Length(min=0, max=64, message="创建人长度必须介于 0 和 64 之间")
	public String getCreatedUser() {
		return createdUser;
	}

	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}
	
	@Length(min=0, max=32, message="创建时间长度必须介于 0 和 32 之间")
	public String getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	
	@Length(min=0, max=64, message="更新人长度必须介于 0 和 64 之间")
	public String getUpdatedUser() {
		return updatedUser;
	}

	public void setUpdatedUser(String updatedUser) {
		this.updatedUser = updatedUser;
	}
	
	@Length(min=0, max=32, message="更新时间长度必须介于 0 和 32 之间")
	public String getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(String updatedTime) {
		this.updatedTime = updatedTime;
	}
	
	@Length(min=0, max=64, message="预留字段1长度必须介于 0 和 64 之间")
	public String getExt1() {
		return ext1;
	}

	public void setExt1(String ext1) {
		this.ext1 = ext1;
	}
	
	@Length(min=0, max=64, message="预留字段2长度必须介于 0 和 64 之间")
	public String getExt2() {
		return ext2;
	}

	public void setExt2(String ext2) {
		this.ext2 = ext2;
	}
	
	@Length(min=0, max=64, message="预留字段3长度必须介于 0 和 64 之间")
	public String getExt3() {
		return ext3;
	}

	public void setExt3(String ext3) {
		this.ext3 = ext3;
	}
	
	@Length(min=0, max=64, message="预留字段4长度必须介于 0 和 64 之间")
	public String getExt4() {
		return ext4;
	}

	public void setExt4(String ext4) {
		this.ext4 = ext4;
	}
	
	@Length(min=0, max=64, message="预留字段5长度必须介于 0 和 64 之间")
	public String getExt5() {
		return ext5;
	}

	public void setExt5(String ext5) {
		this.ext5 = ext5;
	}
	
}