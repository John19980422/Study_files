###第一次作业do 文件代码###
ttest ahe,by (year) unequal
gen corr=1.5339 
replace corr=1 if year==2008
gen nana=ahe*corr
preserve
###生成去同伙通胀的数据nana###
ttest nana,by(year) unequal
resore
ttest ahe ,by(bachelor) unequal,if year==2008
ttest nana ,by(bachelor) unequal,if year==1992
by bachelor,sort: ttest nana,by(year) unequal
####Ho:diffence=0,for P>0.1 无法拒绝college student income 有明显的上升，相反，大学生的收入明显的上升###
by year female,sort:sum nana if bachelor==0
###over####
