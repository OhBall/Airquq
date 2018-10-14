import React from 'react';
import airquq_logo from '../../../app/assets/images/airquq_logo.png';
import { Link } from 'react-router-dom';

const LoggedIn = ({ currentUser, logout }) => (
  <ul className='nav-right'>
    <p>You're logged in.</p>
    <Link to="/trips"><li>Trips</li></Link>
    <li onClick={ logout }>Log Out</li>
    <Link to="/trips"><img src={currentUser.photoUrl} /></Link>
  </ul>
);

const NotLoggedIn = ({ openModal }) => {

  return(<ul className='nav-right'>
    <li onClick={() => openModal('signup')}>Sign Up</li>
    <li onClick={() => openModal('login')}>Log In</li>
  </ul>)
};

const Greeting = ({ currentUser, openModal, logout }) => {

  if (currentUser) {
    var component = (
      <LoggedIn logout={logout} currentUser={currentUser} />
    );
  } else {
    var component = <NotLoggedIn openModal={openModal} />;
  }
  
  const sessionLinks = () => (
    <nav className='navbar'>
      <div className='nav-left'>
        
        <Link to="/">
          <div id='logo-container'><img src={airquq_logo} /></div>
        </Link>
        
        <div id='nav-search' className='shadow'>
          <label>
            <i className="fas fa-search"></i>
            <input type="text" placeholder='Try "San Francisco"' />
          </label>
        </div>
      </div> 
      {component}
    </nav>
  );

  return sessionLinks();
};


export default Greeting;
