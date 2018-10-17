import React from 'react';
import Range from 'rc-slider/lib/Range';
import 'rc-slider/assets/index.css';
import 'rc-slider/dist/rc-slider.min.css';
import InputRange from 'react-input-range';

class PriceFilter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      minPrice: this.props.minPrice,
      maxPrice: this.props.maxPrice
    };
    this.updatePrice = this.updatePrice.bind(this);
  }

  updatePrice(e) {
    this.setState({
      minPrice: e[0],
      maxPrice: e[1]
    });
  }
  
  handleSubmit(price) {
    this.props.updateFilter('price', price);
  }

  render() {
    const { minPrice, maxPrice } = this.state;

    return (
      <div id="price-filter-container">
        <div className="slider-container">
          <h3>The average price is $100</h3>

          <div className="price-slider">
            <p>${minPrice}</p>
            <Range
              min={10}
              max={1250}
              allowCross={false}
              value={[minPrice, maxPrice]}
              defaultValue={[minPrice, maxPrice]}
              onChange={this.updatePrice}
            />
            <p>${maxPrice}</p>
          </div>
          <div className="price-clear-button" onClick={this.props.clearFilter} >Clear</div>
          <div className="price-apply-button"
            onClick={ () => this.handleSubmit([minPrice, maxPrice]) }
          >Apply</div>
        </div>
      </div>
    )
  }
}

export default PriceFilter;
