export const fetchSpots = (data) => {
  return (
    $.ajax({
      method: 'GET',
      url: 'api/spots',
      data
    })
  );
};

export const createSpot = (spot) => {
  return (
    $.ajax({
      method: 'POST',
      url: 'api/spots',
      data: spot
    })
  );
};
