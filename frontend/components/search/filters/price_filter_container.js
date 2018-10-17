import { connect } from 'react-redux';
import PriceFilter from './price_filter';
import { updateFilter, resetFilter } from '../../../actions/filter_actions';
import { closeModal } from '../../../actions/modal_actions'; 

const MapStateToProps = state => {
  return({
    minPrice: state.ui.filters.price[0],
    maxPrice: state.ui.filters.price[1],
    listings: Object.values(state.entities.listings)
  })
};

const MapDispatchToProps = dispatch => ({
  closeModal: () => dispatch(closeModal()),
  updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
  resetFilter: (filter) => dispatch(resetFilter(filter))
});

export default connect(MapStateToProps, MapDispatchToProps)(PriceFilter);