import React from 'react';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      address: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.setAddress = this.setAddress.bind(this);
    this.handleInput = this.handleInput.bind(this);
  }

  componentDidMount() {
    const input = document.getElementsByClassName("main-search-bar")[0];
    const autocomplete = new google.maps.places.Autocomplete(input);
    google.maps.event.addDomListener(window, "load", autocomplete);
    let address;
    autocomplete.addListener("place_changed", () => {
      if (!autocomplete.getPlace().formatted_address) {
        address = autocomplete.getPlace().name;
        this.setState({address});
        this.handleSubmit();
      } else {
        address = autocomplete.getPlace().formatted_address;
        this.setState({address});
        this.handleSubmit();
      }
    })
  }

  setAddress(address) {
    this.setState({ address })
  }

  handleSubmit(e) {

  }

  handleInput(e) {
    this.setState({ address: e.currentTarget.value })
  }  

  render() {
    return(
      <div>
       <form onSubmit={this.handleSubmit}>
         <i className="fas fa-search"></i>
          <input className="main-search-bar" type="text" onChange={this.handleInput} value={this.state.address} placeholder='Try "San Francisco"' onClick={() => this.props.openModal('search')} />
        </form>
      </div>
    )
  }
}




// class SearchBar extends React.Component {
//   render() {
//     return (
//       <label>
//         <i className="fas fa-search"></i>
//         <input type="text" placeholder='Try "San Francisco"' onClick={() => this.props.openModal('search')} />
//       </label>
//     )
//   }
// }

export default SearchBar;