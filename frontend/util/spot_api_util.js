export const fetchSpots = (bounds) => {
  return (
    $.ajax({
      method: 'GET',
      url: 'api/spots',
      data: bounds
    })
  );
};
