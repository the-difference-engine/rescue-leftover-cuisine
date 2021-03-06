import React, { useState } from 'react';
import { Link, withRouter } from 'react-router-dom';
import { AuthCard, AuthInput } from '../AuthItems/AuthItems';
import { resetPassword, loginUser } from '../../lib/apiClient';

const NewPassword = ({ history, token, setJwt }) => {
  const [errorMsg, setError] = useState(null);
  const [user, setUser] = useState({
    password: '',
    passwordconfirmation: '',
  });

  const resetLink = (
    <Link to="/resetrequest" id="reset-request-link">
      Submit a new password reset request.
    </Link>
  );

  const handleChange = (event) => {
    setUser({
      ...user,
      [event.target.name]: event.target.value,
    });
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    if (user.password !== user.passwordconfirmation) {
      setError("The password and password confirmation fields don't match.");
      return;
    }

    resetPassword(token, user.password)
      .then((response) => {
        const { email } = response.data;
        loginUser({
          email,
          password: user.password,
        })
          .then((resp) => {
            setJwt(resp.headers.authorization);
            history.push('/');
          })
          .catch(() => {
            setError('Something unexpectedly went wrong. Please try again.');
          });
      })
      .catch((error) => {
        const { errors } = error.response.data;
        if (errors.reset_password_token) {
          setError('The request failed due to an invalid password reset token.');
        } else {
          setError('Something unexpectedly went wrong. Please try again.');
        }
      });
  };

  return (
    <AuthCard
      title="Reset Password"
      submitText="Reset Password"
      handleSubmit={handleSubmit}
      errorMessage={errorMsg}
      successMessage={resetLink}
    >
      <AuthInput
        form="resetpword"
        name="password"
        placeholder="Password"
        type="password"
        required
        minLength="6"
        handleChange={handleChange}
      />
      <AuthInput
        form="resetpword"
        name="passwordConfirmation"
        placeholder="Password Confirmation"
        type="password"
        required
        handleChange={handleChange}
      />
    </AuthCard>
  );
};

export default withRouter(NewPassword);
