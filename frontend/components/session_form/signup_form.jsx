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
      <ul className="errors-ul">
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
    this.props.processForm(user).then(this.props.closeModal);
  }

  render() {
    const { otherForm, closeModal } = this.props;

    return (
      <div className='session-form-signup'>        
        <div onClick={closeModal} className="close-x">✕</div>

        {this.renderErrors()}
        <form onSubmit={this.handleSubmit} className="session-input-container">
          <label>
            <input type="text" value={this.state.email} onChange={this.handleInput('email')} placeholder='Email' required />
          </label><br /><br />

          <label>
            <input type="password" value={this.state.password} onChange={this.handleInput('password')} placeholder='Password' required />
          </label><br /><br />

          <label>
            <input type="text" value={this.state.first_name} onChange={this.handleInput('first_name')} placeholder='First Name' required />
          </label><br /><br />

          <label>
            <input type="text" value={this.state.last_name} onChange={this.handleInput('last_name')} placeholder='Last Name' required />
          </label><br /><br />

          <div onClick={ this.handleSubmit } className='session-button'>Sign Up</div>
        </form>
        <div class="divide-line" />
        <div className='session-option'>Already have an Airquq account? {otherForm}</div>
      </div>
    );
  }
}

export default withRouter(SessionForm);