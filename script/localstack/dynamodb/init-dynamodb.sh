#!/bin/bash

# -- > Create DynamoDb Table
echo Creating DynamoDb \'ListaProdutos\' table ...
echo $(awslocal dynamodb create-table --cli-input-json '{
    "TableName":"ListaProdutos",
    "KeySchema":[
        {"AttributeName":"id_cliente","KeyType":"HASH"},
        {"AttributeName":"id_produto_contrato","KeyType":"RANGE"}],
    "AttributeDefinitions":[
        {"AttributeName":"id_cliente","AttributeType":"S"},
        {"AttributeName":"id_produto_contrato","AttributeType":"S"}],
    "BillingMode":"PAY_PER_REQUEST"
}')

# --> List DynamoDb Tables
echo Listing tables ...
echo $(awslocal dynamodb list-tables)
