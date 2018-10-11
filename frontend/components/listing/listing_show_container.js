import { connect } from 'react-redux';
import { fetchListing } from '../../actions/listing_actions';
import ListingShow from './listing_show';

const MapStateToProps = (state, ownProps) => ({
  listing: state.entities.listings[ownProps.match.params.listingId]
});

const MapDispatchToProps = dispatch => ({
  fetchListing: listingId => dispatch(fetchListing(listingId))
});

export default connect(MapStateToProps, MapDispatchToProps)(ListingShow);