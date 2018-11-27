import React from 'react';
import Range from 'rc-slider/lib/Range';
import '../../../../app/assets/stylesheets/components/rc-slider.css';

class PriceFilter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      minPrice: this.props.minPrice,
      maxPrice: this.props.maxPrice
    };
    this.updatePrice = this.updatePrice.bind(this);
    this.handleClear = this.handleClear.bind(this);
  }

  updatePrice(e) {
    this.setState({
      minPrice: e[0],
      maxPrice: e[1]
    });
  }

  handleSubmit(price) {
    this.props.closeModal();
    this.props.updateFilter('price', price);
  }

  handleClear() {
    this.props.closeModal();
    this.props.resetFilter('price');
  }

  calculateAverage() {
    let average = 0;
    this.props.listings.forEach(
      listing => (average += parseInt(listing.price))
    );
    if (this.props.listings.length !== 0) {
      average = average / this.props.listings.length;
    }
    return Math.round(average);
  }

  render() {
    const { minPrice, maxPrice } = this.state;

    return (
      <div id="price-filter-container">
        <div className="slider-container">
          <h3>The average price is ${this.calculateAverage()}</h3>

          <div className="price-slider">
            <p>${minPrice}</p>
            <Range
              min={1}
              max={525}
              allowCross={false}
              value={[minPrice, maxPrice]}
              defaultValue={[minPrice, maxPrice]}
              onChange={this.updatePrice}
            />
            <p>${maxPrice}</p>
          </div>
          <div className="price-buttons">
            <div className="price-clear-button" onClick={this.handleClear}>
              Clear
            </div>
            <div
              className="price-apply-button"
              onClick={() => this.handleSubmit([minPrice, maxPrice])}
            >
              Apply
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default PriceFilter;
