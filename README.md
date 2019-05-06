# Listings
Ruby school project deployed on heroku : https://best-team-listing.herokuapp.com/fr


# API DOCUMENTATION


<details>
  <summary>Auhtentification Routes</summary>
  
> https://best-team-listing.herokuapp.com/api/v1/auth

### POST

#### Request Body :

~~~~
{
	"email":"foo@bar.fr",
	"password":"baz"
}
~~~~

####  Success Response : 

> Code : 200 OK

~~~~
{
    "success": true,
    "token": "d2365949-cf8c-427d-89c6-ec9e4f685944"
}
~~~~

To use the token, pass it as the header of your requests.
> "token" : "d2365949-cf8c-427d-89c6-ec9e4f685944"

#### Auhtentification error response : 

> Code : 401 Unauthorized
~~~~
{
    "error": "401 Unauthorized"
}
~~~~
</details>

<details>
  <summary>Account Routes</summary>

> https://best-team-listing.herokuapp.com/api/v1/account

### GET
Requires authentication.

####  Success Response : 

> Code : 200 OK

~~~~
{
    "success": true,
    "user": {
        "id": 991613954,
        "email": "foo@bar.fr",
        "created_at": "2019-04-30T15:06:31.106Z",
        "updated_at": "2019-05-06T08:02:24.601Z",
        "auth_token": "249d95e9-c1dd-44e9-88fc-2c5312a8736b"
    }
}
~~~~
</details>

<details>
  <summary>Products Routes</summary>

> https://best-team-listing.herokuapp.com/api/v1/product

### GET
Requires authentication.

####  Success Response : 
> Code : 200 OK
~~~~
{
    "success": true,
    "products": [
        {
            "id": 980190962,
            "title": "Bottle of beer",
            "description": "Sing while drinking",
            "price": "9.99",
            "user_id": 662706529,
            "created_at": "2019-04-30T14:36:07.845Z",
            "updated_at": "2019-04-30T14:36:07.845Z",
            "category_id": 2
        },
        {
            "id": 298486374,
            "title": "Deux Chevaux",
            "description": "best bolide ever !",
            "price": "678.0",
            "user_id": 662706529,
            "created_at": "2019-04-30T14:36:07.845Z",
            "updated_at": "2019-04-30T14:36:07.845Z",
            "category_id": 1
        },
        {
            "id": 980190963,
            "title": "Taco",
            "description": "Eatable. Kinda...",
            "price": "8.0",
            "user_id": 991613952,
            "created_at": "2019-04-30T14:47:49.375Z",
            "updated_at": "2019-04-30T14:48:08.453Z",
            "category_id": 1
        }
    ]
}
~~~~

### POST
Requires authentication.

#### Request Body :
> Content-Type : application/json

~~~~
{
	"product":{
		"title": "Vin rouge",
		"description": "Un excellent cru",
		"user_id": 991613952,
		"price": 50,
		"category_id": 2
	}	
}
~~~~

####  Success Response : 

> Code : 200 OK

~~~~
{
    "success": true,
    "products": [
        {
            "id": 980190974,
            "title": "Vin rouge",
            "description": "Un excellent cru",
            "price": "50.0",
            "user_id": 991613954,
            "created_at": "2019-05-06T08:14:31.854Z",
            "updated_at": "2019-05-06T08:14:31.854Z",
            "category_id": 2
        }
    ]
}
~~~~
</details>

<details>
    <summary>Single Product Routes</summary>

> https://best-team-listing.herokuapp.com/api/v1/product/{id}

### GET
Requires authentication.

####  Success Response : 

> Code : 200 OK

~~~~
{
    "success": true,
    "products": [
        {
            "id": 980190962,
            "title": "Bottle of beer",
            "description": "Sing while drinking",
            "price": "9.99",
            "user_id": 662706529,
            "created_at": "2019-04-30T14:36:07.845Z",
            "updated_at": "2019-04-30T14:36:07.845Z",
            "category_id": 2
        }
    ]
}
~~~~
</details>



<details>
  <summary>Categories Routes</summary>

> https://best-team-listing.herokuapp.com/api/v1/category

### GET
Requires authentication.

####  Success Response : 

> Code : 200 OK

~~~~
{
    "success": true,
    "categories": [
        {
            "id": 1,
            "created_at": "2019-04-30T14:45:27.450Z",
            "updated_at": "2019-04-30T14:45:27.450Z",
            "name": "Vehicule"
        },
        {
            "id": 2,
            "created_at": "2019-04-30T14:45:27.450Z",
            "updated_at": "2019-04-30T14:45:27.450Z",
            "name": "Food & Drinks"
        },
        {
            "id": 3,
            "created_at": "2019-04-30T14:45:27.450Z",
            "updated_at": "2019-04-30T14:45:27.450Z",
            "name": "Immobilier"
        }
    ]
}
~~~~
</details>

