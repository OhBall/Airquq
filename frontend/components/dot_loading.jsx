import React from 'react';
import { BeatLoader } from 'react-spinners'; 

const DotLoading = (state) => {
  return (
    <div className="react-spinner-container">
      <BeatLoader
        className="beat-loader"
        sizeUnit={"px"}
        size={20}
        color={'#008489'}
        loading={state.loading}
      />
    </div>
  )
};

export default DotLoading;