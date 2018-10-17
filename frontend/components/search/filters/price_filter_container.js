import { connect } from 'react-redux';
import PriceFilter from './price_filter';
import { updateFilter, clearFilter } from '../../../actions/filter_actions';

const MapStateToProps = state => ({
  minPrice: 0,
  maxPrice: 1200,
});

const MapDispatchToProps = dispatch => ({
  updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
  clearFilter: () => dispatch(clearFilter())
});

export default connect(MapStateToProps, MapDispatchToProps)(PriceFilter);