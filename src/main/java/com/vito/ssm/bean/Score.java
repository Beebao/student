package com.vito.ssm.bean;

public class Score {
    private Integer scoreId;

    private Integer scoreStu;

    private Integer scoreCou;

    private Integer scoreDept;

    private Integer scoreTea;

    private Integer scoreValue;

    private String scoreYear;

    private String scoreTerm;
    
    private Department department;
    
    private Teacher teacher;
    
    private Student student;
    
    private Course course;

    public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Integer getScoreId() {
        return scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
    }

    public Integer getScoreStu() {
        return scoreStu;
    }

    public void setScoreStu(Integer scoreStu) {
        this.scoreStu = scoreStu;
    }

    public Integer getScoreCou() {
        return scoreCou;
    }

    public void setScoreCou(Integer scoreCou) {
        this.scoreCou = scoreCou;
    }

    public Integer getScoreDept() {
        return scoreDept;
    }

    public void setScoreDept(Integer scoreDept) {
        this.scoreDept = scoreDept;
    }

    public Integer getScoreTea() {
        return scoreTea;
    }

    public void setScoreTea(Integer scoreTea) {
        this.scoreTea = scoreTea;
    }

    public Integer getScoreValue() {
        return scoreValue;
    }

    public void setScoreValue(Integer scoreValue) {
        this.scoreValue = scoreValue;
    }

    public String getScoreYear() {
        return scoreYear;
    }

    public void setScoreYear(String scoreYear) {
        this.scoreYear = scoreYear == null ? null : scoreYear.trim();
    }

    public String getScoreTerm() {
        return scoreTerm;
    }

    public void setScoreTerm(String scoreTerm) {
        this.scoreTerm = scoreTerm == null ? null : scoreTerm.trim();
    }
}