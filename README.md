This is WEB applicable repo for 463 Mini Project

*****************************************************************************
IMPORTANT NOTE!
PLEASE USE "FINAL PRODUCT BRANCH" INSTEAD OF MASTER TO REVIEW OUR FINAL CODE!
*****************************************************************************


Requirement
Build an application that is secure (requires logging in. This can be via Gmail, Facebook or your own system), the application should basically receive and plot sampled temperature and humidity from a sensor. You do not have to develop the sensor but you are expected to simulate it.

Contribution List:
Zexing Gao
1. Login system
2. Database support
3. Deployment on cloud service (Google Cloud platform)
4. Temperature/humidity data simulation

Cong Han
1. Data plotting
2. UI design
3. Average temperature/humidity calculation

To whom trying to use the App:
If you want to use the App, please download the zip file and open RealMini.sln via Visual Studio. We apologize for the inconvenience of using, and the reason is described in following section. For the grader, if you do not have enough time to download VS, you can see our Wiki page https://github.com/ZexingGao/EC463MiniProject/wiki for result of using descriptions. 


Description of flaws:
We tried to deploy the WEB APP on Google Cloud Platform. However, our SQL server cannot deploy on Google cloud with the app at the same time because I am using a free account. Currently user can only see the static web page on http://35.237.187.234/. User cannot directly use the APP because it is a local SQL server connection. Again, we seriously apologize for the inconvenience.
