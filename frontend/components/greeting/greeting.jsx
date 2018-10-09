import React from 'react';
import { openModal } from '../../actions/modal_actions';

const Greeting = ({ currentUser, openModal, logout }) => {
  const sessionLinks = () => (
    <nav>
      <button onClick={() => openModal('login')}>Log In</button>
      &nbsp;or&nbsp;
      <button onClick={() => openModal('signup')}>Sign Up</button>
    </nav>
  );
  const personalGreeting = () => (
    <hgroup>
      <h2>Hi, {currentUser.username}!</h2>
      <button onClick={logout}>Log Out</button>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
