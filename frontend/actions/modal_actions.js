export const OPEN_MODAL = 'OPEN_MODAL';
export const CLOSE_MODAL = 'CLOSE_MODAL';
export const OPEN_MODAL_WITH_LISTING = 'OPEN_MODAL_WITH_LISTING';

export const openModal = modal => ({
  type: OPEN_MODAL,
  modal
});

export const closeModal = () => ({
  type: CLOSE_MODAL
});

export const openModalWithListing = (modal, listing) => ({
  type: OPEN_MODAL_WITH_LISTING,
  modal,
  listing
})