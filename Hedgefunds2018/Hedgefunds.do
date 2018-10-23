set more off

sum Mkt RMRF SMB HML MOM Low Two Three Four Five Six Seven Eight Nine High, d

//以下是探究为何多因子模型比CAPM好
corr RMRF SMB HML MOM
reg Low RMRF SMB HML MOM
reg Two RMRF SMB HML MOM
reg Three RMRF SMB HML MOM
reg Four RMRF SMB HML MOM
reg Five RMRF SMB HML MOM
reg Six RMRF SMB HML MOM
reg Seven RMRF SMB HML MOM
reg Eight RMRF SMB HML MOM
reg Nine RMRF SMB HML MOM
reg High RMRF SMB HML MOM

reg Low RMRF 
reg Two RMRF 
reg Three RMRF 
reg Four RMRF 
reg Five RMRF 
reg Six RMRF 
reg Seven RMRF 
reg Eight RMRF 
reg Nine RMRF 
reg High RMRF 

