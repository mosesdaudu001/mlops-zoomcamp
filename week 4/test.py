import requests

ride = {
    "PULocationID": 10,
    "DOLocationID": 50,
    "trip_distance": 40
}

url = 'http://localhost:9696/predict'
response = requests.post(url, json=ride)
print(response.json())

# features = predict.prepare_features(ride)
# pred = predict.predict(ride)
# print(pred[0])



# response = requests.post(url, data=input_json)

# print(response.text)