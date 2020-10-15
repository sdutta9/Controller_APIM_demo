echo "Running Create Artifacts Script"
sed "s/controller_host/$1/;s/controller_username/$2/;s/controller_password/$3/" ./PostmanCollections/Controller3.x_Env.postman_environment.json > temp_env.json

newman run -k ./PostmanCollections/Controller3.x_deploy_F1_V2.postman_collection.json -e  ./temp_env.json --bail
rm ./temp_env.json