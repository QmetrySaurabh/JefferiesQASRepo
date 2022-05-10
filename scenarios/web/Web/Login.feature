Feature: Web

@author:saurabhpisal



Scenario Outline: Login
	
   Given get "https://qas.qmetry.com/bank"
   When wait until "text.txtusername" to be visible
   And clear "text.txtusername"
   And wait until "text.txtusername" to be visible
   And sendKeys "Bob" into "text.txtusername"
   And wait until "password.txtpassword" to be visible
   And clear "password.txtpassword"
   And wait until "password.txtpassword" to be visible
   And sendEncryptedKeys "Qm9i" into "password.txtpassword"
   And wait until "button.btnlogin" to be visible
   And click on "button.btnlogin"
   And wait until "number.enter.amount.for.credit" to be visible
   And clear "number.enter.amount.for.credit"
   And wait until "number.enter.amount.for.credit" to be visible
   And sendKeys "${credit}" into "number.enter.amount.for.credit"
   And wait until "button.credit" to be visible
   And click on "button.credit"
   And wait until "number.enter.amount.for.debit" to be visible
   And clear "number.enter.amount.for.debit"
   And wait until "number.enter.amount.for.debit" to be visible
   And sendKeys "${debit}" into "number.enter.amount.for.debit"
   And wait until "button.debit" to be visible
   And click on "button.debit"
   And wait until "button.logout" to be visible
   And click on "button.logout"
   

Examples:
    |credit|debit|
    |2000|20|
    |3000|30|
