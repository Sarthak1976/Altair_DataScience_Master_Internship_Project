CREATE database churn_db;
show databases;
use churn_db;
show tables;

select * from customer_data; 
select * from customer_data where Customer_Status = 'Churned'; 
select Customer_Status,count(*) as Number_of_Customers from customer_data group by Customer_Status;

select count(distinct State) from customer_data;

-- Data Distribution
select Gender, count(Gender) as Number_of_Customers, count(Gender)*100.0 / (select count(*) from customer_data) as Percentage from customer_data group by Gender;

select Contract, count(Contract) as Number_of_Customers, count(Contract)*100.0 / (select count(*) from customer_data) as Percentage from customer_data group by Contract;

select Customer_Status, count(Customer_Status) as Number_of_Customers, count(Customer_Status)*100.0 / (select count(*) from customer_data) as Percentage from customer_data group by Customer_Status order by Percentage desc;

select State, count(State) as Number_of_Customers, count(State)*100.0 / (select count(*) from customer_data) as Percentage from customer_data group by State order by Percentage desc;


-- State wise Churning
select State,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by State order by count(*);

-- Genderwise Churning
select Gender,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Gender order by count(*);

-- Maritial status
select Married,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Married order by count(*);

-- Phone_Service
select Phone_Service,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Phone_Service order by count(*);

-- 
select Multiple_Lines,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Multiple_Lines order by count(*);


select Internet_Service,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Internet_Service order by count(*);


select Internet_Type,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Internet_Type order by count(*);


select Online_Security,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Online_Security order by count(*);


select Online_Backup,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Online_Backup order by count(*);


select Device_Protection_Plan,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Device_Protection_Plan order by count(*);


select Premium_Support,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Premium_Support order by count(*);


select Streaming_TV,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Streaming_TV order by count(*);


select Streaming_Movies,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Streaming_Movies order by count(*);


select Streaming_Music,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Streaming_Music order by count(*);


select Unlimited_Data,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Unlimited_Data order by count(*);


select Contract,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Contract order by count(*);


select Paperless_Billing,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Paperless_Billing order by count(*);


select Payment_Method,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Payment_Method order by count(*);


select Churn_Category,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Churn_Category order by count(*);


select Churn_Reason,count(*) as Number_of_Customers_Churned from customer_data where Customer_Status = 'Churned' group by Churn_Reason order by count(*);








