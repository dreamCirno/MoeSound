package com.moe.entity;

public class Question implements java.io.Serializable {
    private String question;
    private String answer;

    public Question() {
        super();
    }

    public Question(String answer) {
        this.answer = answer;
    }

    public Question(String question, String answer) {
        this.question = question;
        this.answer = answer;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public boolean equals(Question obj) {
        if (question.equals(obj.question)) {
            if (answer.equals(obj.answer)) {
                return true;
            }
        }
        return false;
    }
}
