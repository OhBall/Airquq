import React from 'react';
import airquq_logo from '../../../app/assets/images/airquq_logo.png';

const LoggedIn = ({ logout }) => (
  <ul className='nav-right'>
    <li>You're logged in.</li>
    <li onClick={ logout }>Log Out</li>
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
    var component = <LoggedIn logout={logout} />;
  } else {
    var component = <NotLoggedIn openModal={openModal} />;
  }
  
  const sessionLinks = () => (
    <nav className='navbar'>
      <div className='nav-left'>
        <div id='logo-container'><img src={airquq_logo} /></div>
        <div id='nav-search' className='shadow'>
          <label>
            <i class="fas fa-search"></i>
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
