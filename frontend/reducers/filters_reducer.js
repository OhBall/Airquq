import { UPDATE_FILTER, RESET_ONE_FILTER, CLEAR_ALL_FILTER } from '../actions/filter_actions';

const defaultFilters = Object.freeze({
  bounds: {},
  price: [1, 525]
});

const filtersReducer = (state = defaultFilters, action) => {
  Object.freeze(state);

  switch(action.type) {
    case UPDATE_FILTER:
      const newFilter = {
        [action.filter]: action.value
      };
      return Object.assign({}, state, newFilter);
    case CLEAR_ALL_FILTER:
      return defaultFilters;
    case RESET_ONE_FILTER:
      let newState = Object.assign({}, state);
      newState[action.filter] = defaultFilters[action.filter];
      return newState;
    default: 
      return state;
  }
}

export default filtersReducer;