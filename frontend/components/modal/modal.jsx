import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';
import LogoutFormContainer from '../session_form/logout_form_container';
import SearchDropdown from '../navbar/search_dropdown';
import PriceFilterContainer from '../search/filters/price_filter_container';
import ListingIndexItem from '../listing/listing_index_item';
import { clearErrors } from '../../actions/session_actions';

function Modal({ modal, closeModal }) {
  if (!modal) {
    return null;
  }
  let component;
    if (modal === 'login') {
      component = <LoginFormContainer />;
    } else if (modal === 'signup') {
      component = <SignupFormContainer />;
    } else if (modal === 'logout') {
      component = <LogoutFormContainer />;
      return (
        <div id='modal' onClick={closeModal}>
          <div onClick={e => e.stopPropagation()} >
            {component}
            <div onClick={closeModal} className="logout-modal-screen" />
          </div>
        </div>
      )
    } else if (modal === 'search') {
      component = <SearchDropdown closeModal={closeModal} />
      return (
        <div id='modal' onClick={closeModal}>
          <div onClick={e => e.stopPropagation()}>
            {component}
            <div onClick={closeModal} className="logout-modal-screen" />
          </div>
        </div>
      )
    } else if (modal === 'price') {
      component = <PriceFilterContainer />
      return (
        <div id='modal' onClick={closeModal}>
          <div onClick={e => e.stopPropagation()}>
            {component}
            <div onClick={closeModal} className="filter-modal-screen" />
          </div>
        </div>
      )
    } else if (modal.modal === 'listing') {
      component = <ListingIndexItem listing={modal.listing} />
      return (
        <div id='listing-map-modal' onClick={closeModal}>
          <div onClick={e => e.stopPropagation()}>
            <div id="listing-map-modal-component">
              {component}
            </div>
            <div onClick={closeModal} id="map-modal-screen" />
          </div>
        </div>
      )
    } else {
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