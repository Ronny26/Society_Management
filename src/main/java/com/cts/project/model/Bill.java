package com.cts.project.model;

public class Bill {

 private long id;
 private long elecBill;
 private long mainBill;
 private long watBill;
 private boolean elecStat;
 private boolean mainStat;
 private boolean watStat;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public long getElecBill() {
	return elecBill;
}
public void setElecBill(long elecBill) {
	this.elecBill = elecBill;
}
public long getMainBill() {
	return mainBill;
}
public void setMainBill(long mainBill) {
	this.mainBill = mainBill;
}
public long getWatBill() {
	return watBill;
}
public void setWatBill(long watBill) {
	this.watBill = watBill;
}
public boolean isElecStat() {
	return elecStat;
}
public void setElecStat(boolean elecStat) {
	this.elecStat = elecStat;
}
public boolean isMainStat() {
	return mainStat;
}
public void setMainStat(boolean mainStat) {
	this.mainStat = mainStat;
}
public boolean isWatStat() {
	return watStat;
}
public void setWatStat(boolean watStat) {
	this.watStat = watStat;
}
 

 
}
