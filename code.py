import logging
import azure.functions as func
import json

def get_product(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    # Get the product ID from the request URL
    product_id = req.route_params.get('product_id')
    
    # Dummy product data for demonstration
    product_data = {
        "product_id": product_id,
        "name": "Sample Product",
        "description": "This is a sample product description",
        "price": 9.99
    }

    return func.HttpResponse(json.dumps(product_data), mimetype="application/json")

def place_order(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    # Get the request body
    req_body = req.get_json()

    # Dummy order data for demonstration
    order_data = {
        "status": "success",
        "message": "Order placed successfully!",
        "order_details": req_body
    }

    return func.HttpResponse(json.dumps(order_data), mimetype="application/json")
