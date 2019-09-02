#financial data homework
#video 71
#fill in the blanks
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#solution
profit = revenue - expenses
profit

#profit after tax, tax rate is 30%
#round tax to two decimals
tax<- round(0.3*profit,2)
tax

#calculate the profit after tax
profit.after.tax <- profit-tax
profit.after.tax

#calculate profit margin
profit.margin<- round(profit.after.tax/revenue,2)*100
profit.margin 

#calculate the mean profit.after.tax
mean_pat<-mean(profit.after.tax)
mean_pat

#find good months
good.months<- profit.after.tax>mean_pat
good.months
#find bad months
bad.months<-!good.months
bad.months

#find best month
best.month<- profit.after.tax==max(profit.after.tax)
best.month
worst.month<- profit.after.tax==min(profit.after.tax)
worst.month

#convert all calculations to units of one thousand dollars
revenue.1000<- round(revenue/1000, 0)
revenue.1000
expenses.1000<-round(expenses/1000, 0)
expenses.1000
profit.1000<-round((revenue-expenses)/1000,0)
profit.1000
profit.after.tax.1000<-round((revenue-expenses)*0.3/1000,0)
profit.after.tax.1000

#preview of next chapter
M<-rbind(revenue.1000,
         expenses.1000,
         profit.1000,
         profit.after.tax.1000,
         profit.margin,
         good.months,
         bad.months,
         best.month,
         worst.month)
M
colnames(M)<-c("Jan","Feb","Mar","Apr",
               "May","Jun","July","Aug",
               "Sep","Oct","Nov","Dec")
rownames(M)<-(c("revenue.1000",
                "expenses.1000",
                "profit.1000",
                "profit.after.tax.1000",
                "profit.margin",
                "good.months",
                "bad.months",
                "best.month",
                "worst.month"))
                