# Dataik Image

The license key is embedded into the image (valid until February 2020) and located at /home/bluedata/data/config/license.json.
Apfter creating the image in your tenant, you must see the Dataiku login page. Please Use Admin/Admin as username/password.

You wish to use a Dataiku dataset based on Datatap reference, please do the following actions:

First you have to create a new HDFS connection in Dataiku (Go into the Administration section and follow the screenshots below)

![ScreenShoot](./pictures/create_dtap_connection.png)

![ScreenShoot](./pictures/create_dtap_connection_1.png)

![ScreenShoot](./pictures/create_dtap_connection_2.png)

After HDFS connection creation, you can create a new dataset using the named ressource:

![ScreenShoot](./pictures/create_dtap_dataset_1.png)

You can test it by listing the available files, and you can preview the data associated with a specfic file:
![ScreenShoot](./pictures/create_dtap_dataset_2.png)u

