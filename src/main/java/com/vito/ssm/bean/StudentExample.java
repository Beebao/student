package com.vito.ssm.bean;

import java.util.ArrayList;
import java.util.List;

public class StudentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StudentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStuIdIsNull() {
            addCriterion("stu_id is null");
            return (Criteria) this;
        }

        public Criteria andStuIdIsNotNull() {
            addCriterion("stu_id is not null");
            return (Criteria) this;
        }

        public Criteria andStuIdEqualTo(Integer value) {
            addCriterion("stu_id =", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotEqualTo(Integer value) {
            addCriterion("stu_id <>", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdGreaterThan(Integer value) {
            addCriterion("stu_id >", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_id >=", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdLessThan(Integer value) {
            addCriterion("stu_id <", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdLessThanOrEqualTo(Integer value) {
            addCriterion("stu_id <=", value, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdIn(List<Integer> values) {
            addCriterion("stu_id in", values, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotIn(List<Integer> values) {
            addCriterion("stu_id not in", values, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdBetween(Integer value1, Integer value2) {
            addCriterion("stu_id between", value1, value2, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_id not between", value1, value2, "stuId");
            return (Criteria) this;
        }

        public Criteria andStuNameIsNull() {
            addCriterion("stu_name is null");
            return (Criteria) this;
        }

        public Criteria andStuNameIsNotNull() {
            addCriterion("stu_name is not null");
            return (Criteria) this;
        }

        public Criteria andStuNameEqualTo(String value) {
            addCriterion("stu_name =", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotEqualTo(String value) {
            addCriterion("stu_name <>", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameGreaterThan(String value) {
            addCriterion("stu_name >", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameGreaterThanOrEqualTo(String value) {
            addCriterion("stu_name >=", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLessThan(String value) {
            addCriterion("stu_name <", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLessThanOrEqualTo(String value) {
            addCriterion("stu_name <=", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLike(String value) {
            addCriterion("stu_name like", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotLike(String value) {
            addCriterion("stu_name not like", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameIn(List<String> values) {
            addCriterion("stu_name in", values, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotIn(List<String> values) {
            addCriterion("stu_name not in", values, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameBetween(String value1, String value2) {
            addCriterion("stu_name between", value1, value2, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotBetween(String value1, String value2) {
            addCriterion("stu_name not between", value1, value2, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuAgeIsNull() {
            addCriterion("stu_age is null");
            return (Criteria) this;
        }

        public Criteria andStuAgeIsNotNull() {
            addCriterion("stu_age is not null");
            return (Criteria) this;
        }

        public Criteria andStuAgeEqualTo(Integer value) {
            addCriterion("stu_age =", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeNotEqualTo(Integer value) {
            addCriterion("stu_age <>", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeGreaterThan(Integer value) {
            addCriterion("stu_age >", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_age >=", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeLessThan(Integer value) {
            addCriterion("stu_age <", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeLessThanOrEqualTo(Integer value) {
            addCriterion("stu_age <=", value, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeIn(List<Integer> values) {
            addCriterion("stu_age in", values, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeNotIn(List<Integer> values) {
            addCriterion("stu_age not in", values, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeBetween(Integer value1, Integer value2) {
            addCriterion("stu_age between", value1, value2, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_age not between", value1, value2, "stuAge");
            return (Criteria) this;
        }

        public Criteria andStuGenderIsNull() {
            addCriterion("stu_gender is null");
            return (Criteria) this;
        }

        public Criteria andStuGenderIsNotNull() {
            addCriterion("stu_gender is not null");
            return (Criteria) this;
        }

        public Criteria andStuGenderEqualTo(String value) {
            addCriterion("stu_gender =", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderNotEqualTo(String value) {
            addCriterion("stu_gender <>", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderGreaterThan(String value) {
            addCriterion("stu_gender >", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderGreaterThanOrEqualTo(String value) {
            addCriterion("stu_gender >=", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderLessThan(String value) {
            addCriterion("stu_gender <", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderLessThanOrEqualTo(String value) {
            addCriterion("stu_gender <=", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderLike(String value) {
            addCriterion("stu_gender like", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderNotLike(String value) {
            addCriterion("stu_gender not like", value, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderIn(List<String> values) {
            addCriterion("stu_gender in", values, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderNotIn(List<String> values) {
            addCriterion("stu_gender not in", values, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderBetween(String value1, String value2) {
            addCriterion("stu_gender between", value1, value2, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuGenderNotBetween(String value1, String value2) {
            addCriterion("stu_gender not between", value1, value2, "stuGender");
            return (Criteria) this;
        }

        public Criteria andStuDeptIsNull() {
            addCriterion("stu_dept is null");
            return (Criteria) this;
        }

        public Criteria andStuDeptIsNotNull() {
            addCriterion("stu_dept is not null");
            return (Criteria) this;
        }

        public Criteria andStuDeptEqualTo(Integer value) {
            addCriterion("stu_dept =", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotEqualTo(Integer value) {
            addCriterion("stu_dept <>", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptGreaterThan(Integer value) {
            addCriterion("stu_dept >", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_dept >=", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptLessThan(Integer value) {
            addCriterion("stu_dept <", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptLessThanOrEqualTo(Integer value) {
            addCriterion("stu_dept <=", value, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptIn(List<Integer> values) {
            addCriterion("stu_dept in", values, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotIn(List<Integer> values) {
            addCriterion("stu_dept not in", values, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptBetween(Integer value1, Integer value2) {
            addCriterion("stu_dept between", value1, value2, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuDeptNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_dept not between", value1, value2, "stuDept");
            return (Criteria) this;
        }

        public Criteria andStuClassesIsNull() {
            addCriterion("stu_classes is null");
            return (Criteria) this;
        }

        public Criteria andStuClassesIsNotNull() {
            addCriterion("stu_classes is not null");
            return (Criteria) this;
        }

        public Criteria andStuClassesEqualTo(Integer value) {
            addCriterion("stu_classes =", value, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesNotEqualTo(Integer value) {
            addCriterion("stu_classes <>", value, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesGreaterThan(Integer value) {
            addCriterion("stu_classes >", value, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesGreaterThanOrEqualTo(Integer value) {
            addCriterion("stu_classes >=", value, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesLessThan(Integer value) {
            addCriterion("stu_classes <", value, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesLessThanOrEqualTo(Integer value) {
            addCriterion("stu_classes <=", value, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesIn(List<Integer> values) {
            addCriterion("stu_classes in", values, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesNotIn(List<Integer> values) {
            addCriterion("stu_classes not in", values, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesBetween(Integer value1, Integer value2) {
            addCriterion("stu_classes between", value1, value2, "stuClasses");
            return (Criteria) this;
        }

        public Criteria andStuClassesNotBetween(Integer value1, Integer value2) {
            addCriterion("stu_classes not between", value1, value2, "stuClasses");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}