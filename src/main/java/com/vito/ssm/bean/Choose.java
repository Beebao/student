package com.vito.ssm.bean;

public class Choose {
    private Integer id;

    private Integer chooseStu;

    private Integer chooseCou;
    
    private Course course;    

    public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getChooseStu() {
        return chooseStu;
    }

    public void setChooseStu(Integer chooseStu) {
        this.chooseStu = chooseStu;
    }

    public Integer getChooseCou() {
        return chooseCou;
    }

    public void setChooseCou(Integer chooseCou) {
        this.chooseCou = chooseCou;
    }

	public Choose(Integer id, Integer chooseStu, Integer chooseCou) {
		super();
		this.id = id;
		this.chooseStu = chooseStu;
		this.chooseCou = chooseCou;
	}

	public Choose() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Choose [id=" + id + ", chooseStu=" + chooseStu + ", chooseCou=" + chooseCou + "]";
	}
	
    
}