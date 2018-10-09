import React from 'react';
import { withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: '',
      first_name: '',
      last_name: '',
      email: '' 
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>{error}</li>
        ))}
      </ul>
    );
  }

  handleInput(field) {
    return (e) => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  render() {
    const { otherForm, closeModal } = this.props;

    return (
      <div>        
        Please sign up or { otherForm }
        <div onClick={closeModal} className="close-x">X</div>

        {this.renderErrors()}
        <form onSubmit={this.handleSubmit}>
          <label>Username:
            <input type="text" value={this.state.username} onChange={this.handleInput('username')} />
          </label><br /><br />

          <label>Password:
            <input type="password" value={this.state.password} onChange={this.handleInput('password')} />
          </label><br /><br />

          <label>First Name:
            <input type="text" value={this.state.first_name} onChange={this.handleInput('first_name')} />
          </label><br /><br />

          <label>Last Name:
            <input type="text" value={this.state.last_name} onChange={this.handleInput('last_name')} />
          </label><br /><br />

          <label>Email:
            <input type="text" value={this.state.email} onChange={this.handleInput('email')} />
          </label><br /><br />

          <button>Sign Up</button>
        </form>
      </div>
    );
  }
}

export default withRouter(SessionForm);