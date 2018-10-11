import { connect } from 'react-redux';
import Homepage from './homepage';

const mapStateToProps = state => ({
  listings: Object.values(state.entities.listings)
});
const mapDipatchToProps = dispatch => ({
  fetchListings: () => dispatch(fetchListings())
});

export default connect(mapStateToProps, mapDipatchToProps)(Homepage);