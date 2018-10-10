import React from 'react';
import { withRouter } from 'react-router-dom';

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
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
    this.props.processForm(user).then(this.props.closeModal);
  }
  
  render() {
    const { otherForm, closeModal } = this.props;
    
    return(
      <div className='session-login'>
        <div onClick={ closeModal } className="close-x">X</div>
        { this.renderErrors() }
        <form>
          <label>
            <input type="text" value={this.state.email} onChange={this.handleInput('email')} placeholder="Email address" />
          </label><br /><br />

          <label>
            <input type="password" value={this.state.password} onChange={this.handleInput('password')} placeholder="Password" />
          </label><br /><br />

          <div onClick={ this.handleSubmit } className='session-button'>Log In</div>
        </form>
        <div className='session-option'>Don't have an account? {otherForm}</div>      
      </div>
    );
  }
}

export default withRouter(LoginForm);