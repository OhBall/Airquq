import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';
import LogoutFormContainer from '../session_form/logout_form_container';
import SearchDropdown from '../navbar/search_dropdown';
import PriceFilterContainer from '../search/filters/price_filter_container';
import { clearErrors } from '../../actions/session_actions';

function Modal({ modal, closeModal }) {
  if (!modal) {
    return null;
  }
  let component;
  switch (modal) {
    case 'login':
      component = <LoginFormContainer />;
      break;
    case 'signup':
      component = <SignupFormContainer />;
      break;
    case 'logout':
      component = <LogoutFormContainer />;
      return (
        <div id='modal' onClick={closeModal}>
          <div onClick={e => e.stopPropagation()} >
            {component}
            <div onClick={closeModal} className="logout-modal-screen" />
          </div>
        </div>
      )
    case 'search':
        component = <SearchDropdown closeModal={closeModal} />
        return (
          <div id='modal' onClick={closeModal}>
            <div onClick={e => e.stopPropagation()}>
              {component}
              <div onClick={closeModal} className="logout-modal-screen" />
            </div>
          </div>
        )
    case 'price':
      component = <PriceFilterContainer />
      return (
        <div id='modal' onClick={closeModal}>
          <div onClick={e => e.stopPropagation()}>
            {component}
            <div onClick={closeModal} className="filter-modal-screen" />
          </div>
        </div>
      )
    default:
      return null;
  }
  return (
    <div id='modal' onClick={ closeModal }>
      <div onClick={ e => e.stopPropagation() }>
        {component}
        <div onClick={closeModal} className="modal-screen" />
      </div>
    </div>
  );
}

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);