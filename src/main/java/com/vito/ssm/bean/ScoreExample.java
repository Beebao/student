package com.vito.ssm.bean;

import java.util.ArrayList;
import java.util.List;

public class ScoreExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ScoreExample() {
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

        public Criteria andScoreIdIsNull() {
            addCriterion("score_id is null");
            return (Criteria) this;
        }

        public Criteria andScoreIdIsNotNull() {
            addCriterion("score_id is not null");
            return (Criteria) this;
        }

        public Criteria andScoreIdEqualTo(Integer value) {
            addCriterion("score_id =", value, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdNotEqualTo(Integer value) {
            addCriterion("score_id <>", value, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdGreaterThan(Integer value) {
            addCriterion("score_id >", value, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("score_id >=", value, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdLessThan(Integer value) {
            addCriterion("score_id <", value, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdLessThanOrEqualTo(Integer value) {
            addCriterion("score_id <=", value, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdIn(List<Integer> values) {
            addCriterion("score_id in", values, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdNotIn(List<Integer> values) {
            addCriterion("score_id not in", values, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdBetween(Integer value1, Integer value2) {
            addCriterion("score_id between", value1, value2, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreIdNotBetween(Integer value1, Integer value2) {
            addCriterion("score_id not between", value1, value2, "scoreId");
            return (Criteria) this;
        }

        public Criteria andScoreStuIsNull() {
            addCriterion("score_stu is null");
            return (Criteria) this;
        }

        public Criteria andScoreStuIsNotNull() {
            addCriterion("score_stu is not null");
            return (Criteria) this;
        }

        public Criteria andScoreStuEqualTo(Integer value) {
            addCriterion("score_stu =", value, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuNotEqualTo(Integer value) {
            addCriterion("score_stu <>", value, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuGreaterThan(Integer value) {
            addCriterion("score_stu >", value, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuGreaterThanOrEqualTo(Integer value) {
            addCriterion("score_stu >=", value, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuLessThan(Integer value) {
            addCriterion("score_stu <", value, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuLessThanOrEqualTo(Integer value) {
            addCriterion("score_stu <=", value, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuIn(List<Integer> values) {
            addCriterion("score_stu in", values, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuNotIn(List<Integer> values) {
            addCriterion("score_stu not in", values, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuBetween(Integer value1, Integer value2) {
            addCriterion("score_stu between", value1, value2, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreStuNotBetween(Integer value1, Integer value2) {
            addCriterion("score_stu not between", value1, value2, "scoreStu");
            return (Criteria) this;
        }

        public Criteria andScoreCouIsNull() {
            addCriterion("score_cou is null");
            return (Criteria) this;
        }

        public Criteria andScoreCouIsNotNull() {
            addCriterion("score_cou is not null");
            return (Criteria) this;
        }

        public Criteria andScoreCouEqualTo(Integer value) {
            addCriterion("score_cou =", value, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouNotEqualTo(Integer value) {
            addCriterion("score_cou <>", value, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouGreaterThan(Integer value) {
            addCriterion("score_cou >", value, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouGreaterThanOrEqualTo(Integer value) {
            addCriterion("score_cou >=", value, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouLessThan(Integer value) {
            addCriterion("score_cou <", value, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouLessThanOrEqualTo(Integer value) {
            addCriterion("score_cou <=", value, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouIn(List<Integer> values) {
            addCriterion("score_cou in", values, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouNotIn(List<Integer> values) {
            addCriterion("score_cou not in", values, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouBetween(Integer value1, Integer value2) {
            addCriterion("score_cou between", value1, value2, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreCouNotBetween(Integer value1, Integer value2) {
            addCriterion("score_cou not between", value1, value2, "scoreCou");
            return (Criteria) this;
        }

        public Criteria andScoreDeptIsNull() {
            addCriterion("score_dept is null");
            return (Criteria) this;
        }

        public Criteria andScoreDeptIsNotNull() {
            addCriterion("score_dept is not null");
            return (Criteria) this;
        }

        public Criteria andScoreDeptEqualTo(Integer value) {
            addCriterion("score_dept =", value, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptNotEqualTo(Integer value) {
            addCriterion("score_dept <>", value, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptGreaterThan(Integer value) {
            addCriterion("score_dept >", value, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptGreaterThanOrEqualTo(Integer value) {
            addCriterion("score_dept >=", value, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptLessThan(Integer value) {
            addCriterion("score_dept <", value, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptLessThanOrEqualTo(Integer value) {
            addCriterion("score_dept <=", value, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptIn(List<Integer> values) {
            addCriterion("score_dept in", values, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptNotIn(List<Integer> values) {
            addCriterion("score_dept not in", values, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptBetween(Integer value1, Integer value2) {
            addCriterion("score_dept between", value1, value2, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreDeptNotBetween(Integer value1, Integer value2) {
            addCriterion("score_dept not between", value1, value2, "scoreDept");
            return (Criteria) this;
        }

        public Criteria andScoreTeaIsNull() {
            addCriterion("score_tea is null");
            return (Criteria) this;
        }

        public Criteria andScoreTeaIsNotNull() {
            addCriterion("score_tea is not null");
            return (Criteria) this;
        }

        public Criteria andScoreTeaEqualTo(Integer value) {
            addCriterion("score_tea =", value, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaNotEqualTo(Integer value) {
            addCriterion("score_tea <>", value, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaGreaterThan(Integer value) {
            addCriterion("score_tea >", value, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaGreaterThanOrEqualTo(Integer value) {
            addCriterion("score_tea >=", value, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaLessThan(Integer value) {
            addCriterion("score_tea <", value, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaLessThanOrEqualTo(Integer value) {
            addCriterion("score_tea <=", value, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaIn(List<Integer> values) {
            addCriterion("score_tea in", values, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaNotIn(List<Integer> values) {
            addCriterion("score_tea not in", values, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaBetween(Integer value1, Integer value2) {
            addCriterion("score_tea between", value1, value2, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreTeaNotBetween(Integer value1, Integer value2) {
            addCriterion("score_tea not between", value1, value2, "scoreTea");
            return (Criteria) this;
        }

        public Criteria andScoreValueIsNull() {
            addCriterion("score_value is null");
            return (Criteria) this;
        }

        public Criteria andScoreValueIsNotNull() {
            addCriterion("score_value is not null");
            return (Criteria) this;
        }

        public Criteria andScoreValueEqualTo(Integer value) {
            addCriterion("score_value =", value, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueNotEqualTo(Integer value) {
            addCriterion("score_value <>", value, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueGreaterThan(Integer value) {
            addCriterion("score_value >", value, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("score_value >=", value, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueLessThan(Integer value) {
            addCriterion("score_value <", value, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueLessThanOrEqualTo(Integer value) {
            addCriterion("score_value <=", value, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueIn(List<Integer> values) {
            addCriterion("score_value in", values, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueNotIn(List<Integer> values) {
            addCriterion("score_value not in", values, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueBetween(Integer value1, Integer value2) {
            addCriterion("score_value between", value1, value2, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreValueNotBetween(Integer value1, Integer value2) {
            addCriterion("score_value not between", value1, value2, "scoreValue");
            return (Criteria) this;
        }

        public Criteria andScoreYearIsNull() {
            addCriterion("score_year is null");
            return (Criteria) this;
        }

        public Criteria andScoreYearIsNotNull() {
            addCriterion("score_year is not null");
            return (Criteria) this;
        }

        public Criteria andScoreYearEqualTo(String value) {
            addCriterion("score_year =", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearNotEqualTo(String value) {
            addCriterion("score_year <>", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearGreaterThan(String value) {
            addCriterion("score_year >", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearGreaterThanOrEqualTo(String value) {
            addCriterion("score_year >=", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearLessThan(String value) {
            addCriterion("score_year <", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearLessThanOrEqualTo(String value) {
            addCriterion("score_year <=", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearLike(String value) {
            addCriterion("score_year like", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearNotLike(String value) {
            addCriterion("score_year not like", value, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearIn(List<String> values) {
            addCriterion("score_year in", values, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearNotIn(List<String> values) {
            addCriterion("score_year not in", values, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearBetween(String value1, String value2) {
            addCriterion("score_year between", value1, value2, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreYearNotBetween(String value1, String value2) {
            addCriterion("score_year not between", value1, value2, "scoreYear");
            return (Criteria) this;
        }

        public Criteria andScoreTermIsNull() {
            addCriterion("score_term is null");
            return (Criteria) this;
        }

        public Criteria andScoreTermIsNotNull() {
            addCriterion("score_term is not null");
            return (Criteria) this;
        }

        public Criteria andScoreTermEqualTo(String value) {
            addCriterion("score_term =", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermNotEqualTo(String value) {
            addCriterion("score_term <>", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermGreaterThan(String value) {
            addCriterion("score_term >", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermGreaterThanOrEqualTo(String value) {
            addCriterion("score_term >=", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermLessThan(String value) {
            addCriterion("score_term <", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermLessThanOrEqualTo(String value) {
            addCriterion("score_term <=", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermLike(String value) {
            addCriterion("score_term like", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermNotLike(String value) {
            addCriterion("score_term not like", value, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermIn(List<String> values) {
            addCriterion("score_term in", values, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermNotIn(List<String> values) {
            addCriterion("score_term not in", values, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermBetween(String value1, String value2) {
            addCriterion("score_term between", value1, value2, "scoreTerm");
            return (Criteria) this;
        }

        public Criteria andScoreTermNotBetween(String value1, String value2) {
            addCriterion("score_term not between", value1, value2, "scoreTerm");
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