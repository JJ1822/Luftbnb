export const UPDATE_BOUNDS = 'UPDATE_BOUNDS';

export const changeBounds= (bounds) => ({
  type: UPDATE_BOUNDS,
  bounds
});

export const updateBounds = (bounds) => (dispatch) => {
  dispatch(changeBounds(bounds));
};
