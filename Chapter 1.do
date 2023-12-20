/* Chapter 1 */
clear all

// http://fmwww.bc.edu/ec-p/data/wooldridge/datasets.list.html
// ssc install bcuse

// --------------------------------------------------------------------- 1.3 ---
// 횡단면 데이터 예시
bcuse wage1, clear
brows

// 시계열 데이터 예시
bcuse prminwge, clear
brows

// 통합된 횡단면 자료 예시
bcuse cps78_85, clear

list year in 548/553
brows

// 패널자료 예시(wide form)
bcuse slp75_81, clear
brows

// 패널자료 예시(long form)
bcuse wagepan, clear
brows