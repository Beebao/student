package com.vito.ssm.bean;

public class Course {
    private Integer couId;

    private String couName;

    private Integer couHour;

    private Integer couCredit;

    private Integer couDept;

    private Integer couTeacher;

    private String couTime;

    private String couRoom;
    
    private Teacher teacher;
    
    private Department department;
    

    public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getCouId() {
        return couId;
    }

    public void setCouId(Integer couId) {
        this.couId = couId;
    }

    public String getCouName() {
        return couName;
    }

    public void setCouName(String couName) {
        this.couName = couName == null ? null : couName.trim();
    }

    public Integer getCouHour() {
        return couHour;
    }

    public void setCouHour(Integer couHour) {
        this.couHour = couHour;
    }

    public Integer getCouCredit() {
        return couCredit;
    }

    public void setCouCredit(Integer couCredit) {
        this.couCredit = couCredit;
    }

    public Integer getCouDept() {
        return couDept;
    }

    public void setCouDept(Integer couDept) {
        this.couDept = couDept;
    }

    public Integer getCouTeacher() {
        return couTeacher;
    }

    public void setCouTeacher(Integer couTeacher) {
        this.couTeacher = couTeacher;
    }

    public String getCouTime() {
        return couTime;
    }

    public void setCouTime(String couTime) {
        this.couTime = couTime == null ? null : couTime.trim();
    }

    public String getCouRoom() {
        return couRoom;
    }

    public void setCouRoom(String couRoom) {
        this.couRoom = couRoom == null ? null : couRoom.trim();
    }

	@Override
	public String toString() {
		return "Course [couId=" + couId + ", couName=" + couName + ", couHour=" + couHour + ", couCredit=" + couCredit
				+ ", couDept=" + couDept + ", couTeacher=" + couTeacher + ", couTime=" + couTime + ", couRoom="
				+ couRoom + ", teacher=" + teacher + ", department=" + department + "]";
	}
    
}