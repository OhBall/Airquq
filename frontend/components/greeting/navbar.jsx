import React from 'react';
import airquq_logo from '../../../app/assets/images/airquq_logo.png';

const Greeting = ({ currentUser, openModal, logout }) => {
  const sessionLinks = () => (
    <nav className='navbar'>
      <div className='nav-left'>
        <div id='logo-container'><img src={airquq_logo} /></div>
        <div id='nav-search' className='shadow'>
          <label>
            <input type="text" placeholder='Try "San Francisco"' />
          </label>
        </div>
      </div> 

      <ul className='nav-right'>
        <li onClick={() => openModal('signup')}>Sign Up</li>
        <li onClick={() => openModal('login')}>Log In</li>
      </ul>
    </nav>
  );
  const personalGreeting = () => (
    <nav>
      <h2>Hi, {currentUser.username}!</h2>
      <button onClick={ logout }>Log Out</button>
    </nav>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
