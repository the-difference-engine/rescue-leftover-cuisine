import React, { Component } from 'react';
import './sign_up.css';


class SignUp extends Component {

  state = {
    isPasswordVisible: false

  }

  toggleIcon = () => {
    this.setState( prevState => ({
      isPasswordVisible: !prevState.isPasswordVisible
    }));
  }

  // displayIcon = () => {
  //   if (this.state.isPasswordVisible) {
  //     let passwordDiv = document.getElementById('inputPassword4');
  //     passwordDiv.className = "fas fa-eye-slash fa-lg"
  //     passwordDiv.type = ""
  //   }
  // }


  render() {
    return (
      <div class="loginCard">
        <h3 class="loginHeader">Create an Account</h3>
        <form className="form-signUp">
          <div className="form-group row">
              <input type="text" id="inputFirstName" className="firstName col-md form-control-lg" placeholder="First" required="" autoFocus="" />
              <input type="text" id="inputLastName" className="col-md form-control-lg" placeholder="Last" required="" autoFocus="" />
          </div>

          <div className="form-group row">
            <input type="email" id="inputEmail14" className="fullWidth form-control-lg" placeholder="Email" required="" autoFocus="" />
            <label htmlFor="inputEmail14"></label>
          </div>
          <div className="password form-group row">
            <input type={this.state.isPasswordVisible ? "text" : "password"} id="inputPassword4" className="fullWidth form-control-lg" placeholder="Password" required=""/>
            <span className={this.state.isPasswordVisible ? "fas fa-eye-slash fa-lg" : "fas fa-eye fa-lg"} onClick={ this.toggleIcon }></span>
          </div>
          <div className="form-group row">
            <button className="signUpButton btn btn-lg btn-block" type="submit">Sign Up</button>
          </div>
        </form>
      </div>
      
    );
  }

}

export default SignUp;