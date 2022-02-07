package com.ui.model;

public class EnquiryStatus {

	public EnquiryStatus(int enquiryId, int quotationId, int statusId, String status, String ipAddress) {
		super();
		this.enquiryId = enquiryId;
		this.quotationId = quotationId;
		this.statusId = statusId;
		this.status = status;
		this.ipAddress = ipAddress;
	}

	private int enquiryStatusId;
	private int enquiryId;
	private int quotationId;
	private int salesOrderId;
	private int statusId;
	private String remark;
	private String logDateTime;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	private String enquiryNo;
	private String statusName;
	private String firstName;
	private String lastName;

	public int getEnquiryStatusId() {
		return enquiryStatusId;
	}

	public int getEnquiryId() {
		return enquiryId;
	}

	public int getQuotationId() {
		return quotationId;
	}

	public int getStatusId() {
		return statusId;
	}

	public String getStatus() {
		return status;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public String getEnquiryNo() {
		return enquiryNo;
	}

	public String getStatusName() {
		return statusName;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public int getSalesOrderId() {
		return salesOrderId;
	}

	public String getRemark() {
		return remark;
	}

	public String getLogDateTime() {
		return logDateTime;
	}

}
