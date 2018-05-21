package com.vito.ssm.bean;

public class Student {
    private Integer stuId;

    private String stuName;

    private Integer stuAge;

    private String stuGender;

    private Integer stuDept;

    private Integer stuClasses;
    
    private Department department;
    
    private Classes classes;
    

    public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName == null ? null : stuName.trim();
    }

    public Integer getStuAge() {
        return stuAge;
    }

    public void setStuAge(Integer stuAge) {
        this.stuAge = stuAge;
    }

    public String getStuGender() {
        return stuGender;
    }

    public void setStuGender(String stuGender) {
        this.stuGender = stuGender == null ? null : stuGender.trim();
    }

    public Integer getStuDept() {
        return stuDept;
    }

    public void setStuDept(Integer stuDept) {
        this.stuDept = stuDept;
    }

    public Integer getStuClasses() {
        return stuClasses;
    }

    public void setStuClasses(Integer stuClasses) {
        this.stuClasses = stuClasses;
    }
}