clc
close all

enrollments = readtable('EnrollmentForSchoolsAndColleges.csv','VariableNamingRule','preserve');

engin = plot(enrollments.("Enrollment for Schools & Colleges"), enrollments.Var5, '-b');
hold on
lsa = plot(enrollments.("Enrollment for Schools & Colleges"),enrollments.Var7,'-k');
job = plot(enrollments.("Enrollment for Schools & Colleges"),enrollments.Var12,'-r');
grid on
legend('CoE','LSA','Business','Location','northeast')
xlabel('Time (years)')
ylabel('Student Enrollments')
title('UMICH Highest Enrollments')