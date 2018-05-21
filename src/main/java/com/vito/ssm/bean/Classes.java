package com.vito.ssm.bean;

public class Classes {
    private Integer classId;

    private String className;

    private Integer classDept;
    
    private Classes classes;
    
    private Department department;   

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

	public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public Integer getClassDept() {
        return classDept;
    }

    public void setClassDept(Integer classDept) {
        this.classDept = classDept;
    }
}