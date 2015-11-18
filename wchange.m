function [change,delta,angle]=wchange(w,oldw,olddelta)
[M,N]=size(w); delta=reshape(oldw-w,1,M*N);
change=delta*delta';
va=sqrt((delta*delta')*(olddelta*olddelta'));
if (va==0)
    va=0.000000001;
endif
angle=acos((delta*olddelta')/va);
