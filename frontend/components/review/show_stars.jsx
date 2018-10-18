import React from 'react';

export const ShowStars = props => {

  const { starNum } = props;
  return (

    <div className="stars-average">{toStars(starNum)}</div>

  )
}

export const toStars = (rating) => {
  const solidStar = <i className="far fa-star solid-star"></i>;
  const emptyStar = <i className="far fa-star empty-star"></i>;
  const halfStar = <i className="fas fa-star-half-alt"></i>;

  if (rating <= 0.25) {
    return (
      <div className="individual-stars-container">
        {emptyStar}{emptyStar}{emptyStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 0.25 && rating <= 0.75) {
    return (
      <div className="individual-stars-container">
        {halfStar}{emptyStar}{emptyStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 0.75 && rating <= 1.25) {
    return (
      <div className="individual-stars-container">
        {solidStar}{emptyStar}{emptyStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 1.25 && rating <= 1.75) {
    return (
      <div className="individual-stars-container">
        {solidStar}{halfStar}{emptyStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 1.75 && rating <= 2.25) {
    return (
      <div className="individual-stars-container">
        {solidStar}{solidStar}{emptyStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 2.25 && rating <= 2.75) {
    return (
      <div className="individual-stars-container">
        {solidStar}{solidStar}{halfStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 2.75 && rating <= 3.25) {
    return (
      <div className="individual-stars-container">
        {solidStar}{solidStar}{solidStar}{emptyStar}{emptyStar}
      </div>
    )
  } else if (rating > 3.25 && rating <= 3.75) {
    return (
      <div className="individual-stars-container">
        {solidStar}{solidStar}{solidStar}{halfStar}{emptyStar}
      </div>
    )
  } else if (rating > 3.75 && rating <= 4.25) {
    return (<div className="individual-stars-container">
      {solidStar}{solidStar}{solidStar}{solidStar}{emptyStar}
    </div>)
  } else if (rating > 4.25 && rating <= 4, 75) {
    return (
      <div className="individual-stars-container">
        {solidStar}{solidStar}{solidStar}{solidStar}{halfStar}
      </div>
    )
  } else if (rating > 4.75) {
    return (
      <div className="individual-stars-container">
        {solidStar}{solidStar}{solidStar}{solidStar}{solidStar}
      </div>
    )
  }
}
