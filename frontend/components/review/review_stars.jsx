import React from 'react';

class ReviewStars extends React.Component {
    
  render() {
   
    const reviewNum = this.props.reviewNum;

    return(
      <div className="each-review-stars-container">
        <div className="average-reviews-container">
          <p>{reviewNum} Reviews</p>
          <div className="stars-average">...average stars</div>
        </div>

        <div className="divide-line" />

        <ul className="stars-details-container">
          <li><p>Accuracy</p>
          {this.parseDetail('accuracy')}</li>
          <li><p>Location</p>
          {this.parseDetail('location')}</li>
          <li><p>Communication</p>
          {this.parseDetail('communication')}</li>
          <li><p>Check In</p>
          {this.parseDetail('checkIn')}</li>
          <li><p>Cleanliness</p>
          {this.parseDetail('cleanliness')}</li>
          <li><p>Value</p>
          {this.parseDetail('value')}</li>
        </ul>
      <div className="divide-line" />
      </div>
    )
  }

  // parseSumAverage() {

  // }

  parseDetail(category) {
    const reviewsArray = Object.values(this.props.reviews);
    const allRatings = reviewsArray.map(review => review[category]);
    const averageRating = parseInt(this.calculateAverage(allRatings));
    return this.toStars(averageRating);
  }

  calculateAverage(ratings) {
    const sum = ratings.reduce((acc, el) => acc + el, 0);
    const average = (sum / ratings.length).toFixed(2);
    return average;
  }

  toStars(rating) {
    const solidStar = <i className="far fa-star solid-star"></i>;
    const emptyStar = <i className="far fa-star empty-star"></i>;
    const halfStar = <i className="fas fa-star-half-alt"></i>;

    // const result = []
    // const solidStarNum = Math.floor(rating);
    // const remainder = (rating - solidStarNum) > 0.25 ? rating - solidStarNum : 0;

    // for (let i = 0; i < 5; i++) {
    //   if (i < solidStarNum || remainder > 0.75) {
    //     result.push(solidStar)
    //   } else if (remainder > 0.25) {
    //     result.push(halfStar)
    //   } else {
    //     result.push(emptyStar)
    //   };
    // }

    // return (
    //   <div className="individual-stars-container">
    //     {result}
    //   </div>
    // )

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
}

export default ReviewStars;