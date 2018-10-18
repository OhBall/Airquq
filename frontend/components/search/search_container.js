import { connect } from 'react-redux';
import SearchIndex from './search';

import { removeListings } from '../../actions/listing_actions';
import { updateFilter } from '../../actions/filter_actions';
import { openModal, openModalWithListing } from '../../actions/modal_actions';

const MapStateToProps = state => ({
  listings: Object.values(state.entities.listings)
});

const MapDispatchToProps = dispatch => ({
  updateFilter: (filter, value) => dispatch(updateFilter(filter, value)), 
  removeListings: () => dispatch(removeListings()),
  openModal: modal => dispatch(openModal(modal)),
  openModalWithListing: (modal, listing) => dispatch(openModalWithListing(modal, listing))
});

export default connect(MapStateToProps, MapDispatchToProps)(SearchIndex);