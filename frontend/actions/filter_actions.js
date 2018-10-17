import { fetchListings } from '../actions/listing_actions';

export const UPDATE_FILTER = 'UPDATE_FILTER';
export const RESET_ONE_FILTER = 'RESET_ONE_FILTER';
export const CLEAR_ALL_FILTER = 'CLEAR_ALL_FILTER';

const changeFilter = (filter, value) => ({
  type: UPDATE_FILTER,
  filter, 
  value
});

const resetOneFilter = (filter) => ({
  type: RESET_ONE_FILTER,
  filter
});

const clearAllFilter = () => ({
  type: CLEAR_ALL_FILTER
})

export const updateFilter = (filter, value) => (dispatch, getState) => {
  dispatch(changeFilter(filter, value));
  return fetchListings(getState().ui.filters)(dispatch);
};

export const resetFilter = (filter) => (dispatch, getState) => {
  dispatch(resetOneFilter(filter));
  return fetchListings(getState().ui.filters)(dispatch);
};

