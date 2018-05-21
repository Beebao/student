package com.vito.ssm.bean;

import java.util.ArrayList;
import java.util.List;

public class CourseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseExample() {
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

        public Criteria andCouIdIsNull() {
            addCriterion("cou_id is null");
            return (Criteria) this;
        }

        public Criteria andCouIdIsNotNull() {
            addCriterion("cou_id is not null");
            return (Criteria) this;
        }

        public Criteria andCouIdEqualTo(Integer value) {
            addCriterion("cou_id =", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotEqualTo(Integer value) {
            addCriterion("cou_id <>", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdGreaterThan(Integer value) {
            addCriterion("cou_id >", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_id >=", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLessThan(Integer value) {
            addCriterion("cou_id <", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLessThanOrEqualTo(Integer value) {
            addCriterion("cou_id <=", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdIn(List<Integer> values) {
            addCriterion("cou_id in", values, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotIn(List<Integer> values) {
            addCriterion("cou_id not in", values, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdBetween(Integer value1, Integer value2) {
            addCriterion("cou_id between", value1, value2, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_id not between", value1, value2, "couId");
            return (Criteria) this;
        }

        public Criteria andCouNameIsNull() {
            addCriterion("cou_name is null");
            return (Criteria) this;
        }

        public Criteria andCouNameIsNotNull() {
            addCriterion("cou_name is not null");
            return (Criteria) this;
        }

        public Criteria andCouNameEqualTo(String value) {
            addCriterion("cou_name =", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotEqualTo(String value) {
            addCriterion("cou_name <>", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameGreaterThan(String value) {
            addCriterion("cou_name >", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameGreaterThanOrEqualTo(String value) {
            addCriterion("cou_name >=", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLessThan(String value) {
            addCriterion("cou_name <", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLessThanOrEqualTo(String value) {
            addCriterion("cou_name <=", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLike(String value) {
            addCriterion("cou_name like", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotLike(String value) {
            addCriterion("cou_name not like", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameIn(List<String> values) {
            addCriterion("cou_name in", values, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotIn(List<String> values) {
            addCriterion("cou_name not in", values, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameBetween(String value1, String value2) {
            addCriterion("cou_name between", value1, value2, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotBetween(String value1, String value2) {
            addCriterion("cou_name not between", value1, value2, "couName");
            return (Criteria) this;
        }

        public Criteria andCouHourIsNull() {
            addCriterion("cou_hour is null");
            return (Criteria) this;
        }

        public Criteria andCouHourIsNotNull() {
            addCriterion("cou_hour is not null");
            return (Criteria) this;
        }

        public Criteria andCouHourEqualTo(Integer value) {
            addCriterion("cou_hour =", value, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourNotEqualTo(Integer value) {
            addCriterion("cou_hour <>", value, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourGreaterThan(Integer value) {
            addCriterion("cou_hour >", value, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_hour >=", value, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourLessThan(Integer value) {
            addCriterion("cou_hour <", value, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourLessThanOrEqualTo(Integer value) {
            addCriterion("cou_hour <=", value, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourIn(List<Integer> values) {
            addCriterion("cou_hour in", values, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourNotIn(List<Integer> values) {
            addCriterion("cou_hour not in", values, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourBetween(Integer value1, Integer value2) {
            addCriterion("cou_hour between", value1, value2, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouHourNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_hour not between", value1, value2, "couHour");
            return (Criteria) this;
        }

        public Criteria andCouCreditIsNull() {
            addCriterion("cou_credit is null");
            return (Criteria) this;
        }

        public Criteria andCouCreditIsNotNull() {
            addCriterion("cou_credit is not null");
            return (Criteria) this;
        }

        public Criteria andCouCreditEqualTo(Integer value) {
            addCriterion("cou_credit =", value, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditNotEqualTo(Integer value) {
            addCriterion("cou_credit <>", value, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditGreaterThan(Integer value) {
            addCriterion("cou_credit >", value, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_credit >=", value, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditLessThan(Integer value) {
            addCriterion("cou_credit <", value, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditLessThanOrEqualTo(Integer value) {
            addCriterion("cou_credit <=", value, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditIn(List<Integer> values) {
            addCriterion("cou_credit in", values, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditNotIn(List<Integer> values) {
            addCriterion("cou_credit not in", values, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditBetween(Integer value1, Integer value2) {
            addCriterion("cou_credit between", value1, value2, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouCreditNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_credit not between", value1, value2, "couCredit");
            return (Criteria) this;
        }

        public Criteria andCouDeptIsNull() {
            addCriterion("cou_dept is null");
            return (Criteria) this;
        }

        public Criteria andCouDeptIsNotNull() {
            addCriterion("cou_dept is not null");
            return (Criteria) this;
        }

        public Criteria andCouDeptEqualTo(Integer value) {
            addCriterion("cou_dept =", value, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptNotEqualTo(Integer value) {
            addCriterion("cou_dept <>", value, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptGreaterThan(Integer value) {
            addCriterion("cou_dept >", value, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_dept >=", value, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptLessThan(Integer value) {
            addCriterion("cou_dept <", value, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptLessThanOrEqualTo(Integer value) {
            addCriterion("cou_dept <=", value, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptIn(List<Integer> values) {
            addCriterion("cou_dept in", values, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptNotIn(List<Integer> values) {
            addCriterion("cou_dept not in", values, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptBetween(Integer value1, Integer value2) {
            addCriterion("cou_dept between", value1, value2, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouDeptNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_dept not between", value1, value2, "couDept");
            return (Criteria) this;
        }

        public Criteria andCouTeacherIsNull() {
            addCriterion("cou_teacher is null");
            return (Criteria) this;
        }

        public Criteria andCouTeacherIsNotNull() {
            addCriterion("cou_teacher is not null");
            return (Criteria) this;
        }

        public Criteria andCouTeacherEqualTo(Integer value) {
            addCriterion("cou_teacher =", value, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherNotEqualTo(Integer value) {
            addCriterion("cou_teacher <>", value, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherGreaterThan(Integer value) {
            addCriterion("cou_teacher >", value, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_teacher >=", value, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherLessThan(Integer value) {
            addCriterion("cou_teacher <", value, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherLessThanOrEqualTo(Integer value) {
            addCriterion("cou_teacher <=", value, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherIn(List<Integer> values) {
            addCriterion("cou_teacher in", values, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherNotIn(List<Integer> values) {
            addCriterion("cou_teacher not in", values, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherBetween(Integer value1, Integer value2) {
            addCriterion("cou_teacher between", value1, value2, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTeacherNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_teacher not between", value1, value2, "couTeacher");
            return (Criteria) this;
        }

        public Criteria andCouTimeIsNull() {
            addCriterion("cou_time is null");
            return (Criteria) this;
        }

        public Criteria andCouTimeIsNotNull() {
            addCriterion("cou_time is not null");
            return (Criteria) this;
        }

        public Criteria andCouTimeEqualTo(String value) {
            addCriterion("cou_time =", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotEqualTo(String value) {
            addCriterion("cou_time <>", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeGreaterThan(String value) {
            addCriterion("cou_time >", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeGreaterThanOrEqualTo(String value) {
            addCriterion("cou_time >=", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeLessThan(String value) {
            addCriterion("cou_time <", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeLessThanOrEqualTo(String value) {
            addCriterion("cou_time <=", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeLike(String value) {
            addCriterion("cou_time like", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotLike(String value) {
            addCriterion("cou_time not like", value, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeIn(List<String> values) {
            addCriterion("cou_time in", values, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotIn(List<String> values) {
            addCriterion("cou_time not in", values, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeBetween(String value1, String value2) {
            addCriterion("cou_time between", value1, value2, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouTimeNotBetween(String value1, String value2) {
            addCriterion("cou_time not between", value1, value2, "couTime");
            return (Criteria) this;
        }

        public Criteria andCouRoomIsNull() {
            addCriterion("cou_room is null");
            return (Criteria) this;
        }

        public Criteria andCouRoomIsNotNull() {
            addCriterion("cou_room is not null");
            return (Criteria) this;
        }

        public Criteria andCouRoomEqualTo(String value) {
            addCriterion("cou_room =", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomNotEqualTo(String value) {
            addCriterion("cou_room <>", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomGreaterThan(String value) {
            addCriterion("cou_room >", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomGreaterThanOrEqualTo(String value) {
            addCriterion("cou_room >=", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomLessThan(String value) {
            addCriterion("cou_room <", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomLessThanOrEqualTo(String value) {
            addCriterion("cou_room <=", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomLike(String value) {
            addCriterion("cou_room like", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomNotLike(String value) {
            addCriterion("cou_room not like", value, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomIn(List<String> values) {
            addCriterion("cou_room in", values, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomNotIn(List<String> values) {
            addCriterion("cou_room not in", values, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomBetween(String value1, String value2) {
            addCriterion("cou_room between", value1, value2, "couRoom");
            return (Criteria) this;
        }

        public Criteria andCouRoomNotBetween(String value1, String value2) {
            addCriterion("cou_room not between", value1, value2, "couRoom");
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