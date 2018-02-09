export const fetchSpots = (data) => {
  return (
    $.ajax({
      method: 'GET',
      url: 'api/spots',
      data
    })
  );
};

export const fetchSpot = (id) => {
  return (
    $.ajax({
      method: 'GET',
      url: `api/spots/${id}`
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

export const createReview = (review) => {
  return (
    $.ajax({
      method: 'POST',
      url: `api/spots/${review.review.spot_id}/reviews`,
      data: review
    })
  );
};
