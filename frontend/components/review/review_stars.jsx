import React from 'react';
import ShowStars from './show_stars';

class ReviewStars extends React.Component {
    
  render() {
   
    const reviewNum = this.props.reviewNum;

    return(
      <div className="each-review-stars-container">
        <div className="average-reviews-container">
          <p>{reviewNum} Reviews</p>
          <ShowStars starNum={this.calculateFinalStars()} />
        </div>

        <div className="divide-line" />

        <ul className="stars-details-container">
          <li><p>Accuracy</p>
          <ShowStars starNum={this.parseDetail('accuracy')} /></li>
          <li><p>Location</p>
          <ShowStars starNum={this.parseDetail('location')} /></li>
          <li><p>Communication</p>
            <ShowStars starNum={this.parseDetail('communication')} /></li>
          <li><p>Check In</p>
            <ShowStars starNum={this.parseDetail('checkIn')} /></li>
          <li><p>Cleanliness</p>
            <ShowStars starNum={this.parseDetail('cleanliness')} /></li>
          <li><p>Value</p>
            <ShowStars starNum={this.parseDetail('value')} /></li>
        </ul>
      <div className="divide-line" />
      </div>
    )
  }

  // parseSumAverage() {

  // }
  calculateFinalStars() {
    const result = (this.parseDetail('accuracy') + this.parseDetail('location') + 
      this.parseDetail('communication') + this.parseDetail('checkIn') +
      this.parseDetail('cleanliness') + this.parseDetail('value')) / 6
    return result.toFixed(2);
  }

  parseDetail(category) {
    const reviewsArray = Object.values(this.props.reviews);
    const allRatings = reviewsArray.map(review => review[category]);
    const averageRating = parseInt(this.calculateAverage(allRatings));
    return averageRating;
  }

  calculateAverage(ratings) {
    const sum = ratings.reduce((acc, el) => acc + el, 0);
    const average = (sum / ratings.length).toFixed(2);
    return average;
  }
}

export default ReviewStars;