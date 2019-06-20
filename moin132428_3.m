clear all
close all

load ECG.txt
no_experiment=10000;
no_sample_x=datasample(ECG,5,2,'Replace',false)
no_sample_y=6.5;

for i=1:no_experiment
    x=randn(1:no_sample_x);
    y=randn(1:no_sample_y);
    mean_x(i)=mean(x);
    var_x(i)=var(x);
    mean_y(i)=mean(y);
    var_y(i)=var(y);
end

figure(1)
hist((mean(x)-0)*sqrt(no_sample_x)./sqrt(var(x)),100)

sigma_0=1.0;
chi_value=0:0.2:20;
chi_pdf=chi2pdf(chi_value,no_sample_x-1);
figure(2)
plot(chi_value,chi_pdf)

ls_chi_value=abs(chi2inv(0.05,no_sample_x-1);
us_chi_value=abs(chi2inv(0.95,no_sample_x-1);

ds_chi_value_ls=abs(chi2inv(0.025,no_sample_x-1);
ds_chi_value_us=abs(chi2inv(0.975,no_sample_x-1);

u_count=0;
l_count=0;
ds_count=0;

for j=1:no_experiment
    t_values=((no_sample_x-1).*sqrt(var(x(j)))./sigma_0.^2);
    if(t_values<=us_chi_value)
        ucount=ucount+1;
    end
    if(t_values>=us_chi_value)
        lcount=lcount+1;
    end
    if(t_value>=ds_chi_value_ls && t_value<=ds_chi_value_us)
        dscount=dscount+1;
    end
end

correcoef(x,y)

ucount./no_experiment
lcount./no_experiment 
dscount./no_experiment
