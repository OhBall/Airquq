import { connect } from 'react-redux';
import { fetchListings } from '../../actions/listing_actions';
import ListingIndex from './listing_index';

const MapStateToProps = state => ({
  listings: Object.values(state.entities.listings)
});

const MapDispatchToProps = dispatch => ({
  fetchListings: () => dispatch(fetchListings())
});

export default connect(MapStateToProps, MapDispatchToProps)(ListingIndex)