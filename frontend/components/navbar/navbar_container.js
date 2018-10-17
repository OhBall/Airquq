import { connect } from 'react-redux';

// import { logout } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import Navbar from './navbar';

const mapStateToProps = state => {
  if(state.session) {
    return ({
      currentUserId: state.session.id,
      currentUser: state.entities.users[state.session.id]
    })
  } else {
    return null;
  }
};

const mapDispatchToProps = dispatch => ({
  // logout: () => dispatch(logout()),
  openModal: modal => dispatch(openModal(modal)),
  closeModal: () => dispatch(closeModal())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Navbar);
