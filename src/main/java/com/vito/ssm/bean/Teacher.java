package com.vito.ssm.bean;

public class Teacher {
    private Integer teaId;

    private String teaName;

    private Integer teaAge;

    private String teaGender;

    private String teaTitle;

    private Integer teaDept;
    
    private Department department;
    

    public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getTeaId() {
        return teaId;
    }

    public void setTeaId(Integer teaId) {
        this.teaId = teaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName == null ? null : teaName.trim();
    }

    public Integer getTeaAge() {
        return teaAge;
    }

    public void setTeaAge(Integer teaAge) {
        this.teaAge = teaAge;
    }

    public String getTeaGender() {
        return teaGender;
    }

    public void setTeaGender(String teaGender) {
        this.teaGender = teaGender == null ? null : teaGender.trim();
    }

    public String getTeaTitle() {
        return teaTitle;
    }

    public void setTeaTitle(String teaTitle) {
        this.teaTitle = teaTitle == null ? null : teaTitle.trim();
    }

    public Integer getTeaDept() {
        return teaDept;
    }

    public void setTeaDept(Integer teaDept) {
        this.teaDept = teaDept;
    }
}