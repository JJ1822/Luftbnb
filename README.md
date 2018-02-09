# Luftbnb

A single paged app that is based off of Airbnb. I used a Rails, Jbuilder, and PSQL database for my backend
while utilizing React/Redux on the frontend, and SASS to style.  


[Luftbnb live version](https://luftbnb.herokuapp.com/#/)

## Sign Up/ Sign In Features
- User Authentication
- Demo User
- Login and Sign up modal

![user login](https://media.giphy.com/media/3ohjV7W7zb1hyFx3Vu/giphy.gif)

## Spots Index and Map Feature
- Display Spots within the given bounds of map
- Updates listing based on map bounds
- Dragging of map updates bounds of Map
- Use of google map API

![Spot Index](https://media.giphy.com/media/xUNd9HBVtFz3j0tDyM/giphy.gif)

## Spot Show Page Features
- Display description and details
- Display display amenities, beds, bedrooms, bathrooms, number of guests

![Spot Show](https://media.giphy.com/media/xUNd9CxCirOUGQX6jC/giphy.gif)

### Creating/Logging in Users
All pages contain a navbar that changes based on if there is a current user. Only logged in users have access to spots.

### Spots
In the backend there is a spot table that holds the latitude and longitude coordinates, along with name, description, beds, bedrooms, bathrooms, and amenities. This allows the google map api to pinpoint the location on the map and display a pin. The map is displayed alongside an index of the spots that fit in the bounds of the current map. I implemented a bound filter to only grab the spots from the database that fit inside of the current map.

```javascript
  this.listener = google.maps.event.addListener(this.map, 'idle', () => {
    const { north, south, east, west } = this.map.getBounds().toJSON();
    const bounds = {
      northEast: { latitude: north, longitude: east },
      southWest: { latitude: south, longitude: west }
    };
    this.props.updateBounds(bounds);
  });
```

### Future Direction
Implementing the use of an autocomplete google api search bar to search for cities from homepage after log in.
User can add a spot and users have a profile page.
