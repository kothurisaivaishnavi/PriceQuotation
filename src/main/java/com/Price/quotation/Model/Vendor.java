package com.Price.quotation.Model;

import org.springframework.stereotype.Component;

@Component
public class Vendor {
	private int vId;
    private String firstName;
    private String lastName;
    private String Gender;
    private String contactNumber;
    private String vendorId;
    private String password;
    private String address;
	public Vendor() {
		super();
	}
	
	public int getvId() {
		return vId;
	}

	public void setvId(int vId) {
		this.vId = vId;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getVendorId() {
		return vendorId;
	}
	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Vendor [firstName=" + firstName + ", lastName=" + lastName + ", Gender=" + Gender
				+ ", contactNumber=" + contactNumber + ", vendorId=" + vendorId + ", aassword=" + password
				+ ", Address=" + address + "]";
	}
    
}