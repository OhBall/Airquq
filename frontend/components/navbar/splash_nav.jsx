import React from 'react';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';
import airquq_logo from '../../../app/assets/images/airquq_logo.png';
import { Link } from 'react-router-dom';

const LoggedIn = ({ currentUser, openModal }) => (
  <ul className='splash-nav-right'>
    <p>Hello, {currentUser.firstName}</p>
    <Link to="/trips"><li>Trips</li></Link>
    <img src={currentUser.photoUrl} onClick={() => openModal('logout')} />
  </ul>
);

const NotLoggedIn = ({ openModal }) => {

  return (<ul className='splash-nav-right'>
    <li onClick={() => openModal('signup')}>Sign Up</li>
    <li onClick={() => openModal('login')}>Log In</li>
  </ul>)
};

const Navbar = ({ currentUser, openModal, logout }) => {

  if (currentUser) {
    var component = (
      <LoggedIn currentUser={currentUser} openModal={openModal} />
    );
  } else {
    var component = <NotLoggedIn openModal={openModal} />;
  }

  const sessionLinks = () => (
    <nav className='splash-navbar'>
      <div className='splash-nav-left'>

        <Link to="/listings">
          <div id='splash-logo-container'><img src={airquq_logo} /></div>
        </Link>

      </div>
      {component}
    </nav>
  );

  return sessionLinks();
};

const mapStateToProps = state => {
  if (state.session) {
    return ({
      currentUserId: state.session.id,
      currentUser: state.entities.users[state.session.id]
    })
  } else {
    return null;
  }
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  openModal: modal => dispatch(openModal(modal))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Navbar);
