import { fetchListings } from '../actions/listing_actions';

export const UPDATE_FILTER = 'UPDATE_FILTER';
export const RESET_FILTER = 'RESET_FILTER';
export const CLEAR_FILTER = 'CLEAR_FILTER';

export const changeFilter = (filter, value) => ({
  type: UPDATE_FILTER,
  filter, 
  value
});

export const resetFilter = (filter, value) => ({
  type: RESET_FILTER,
  filter, 
  value
});

export const clearFilter = () => ({
  type: CLEAR_FILTER
})

export const updateFilter = (filter, value) => (dispatch, getState) => {
  dispatch(changeFilter(filter, value));
  return fetchListings(getState().ui.filters)(dispatch);
};


